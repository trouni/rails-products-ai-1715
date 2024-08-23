class ChatbotJob < ApplicationJob
  queue_as :default

  def perform(question)
    @question = question

    p questions_formatted_for_openai
    response = client.chat(
      parameters: {
        model: 'gpt-4o-mini',
        messages: questions_formatted_for_openai
      }
    )
    answer = response.dig("choices", 0, "message", "content")
    question.update(ai_answer: answer)
    Turbo::StreamsChannel.broadcast_update_to(
      "question_#{@question.id}",
      target: "question_#{@question.id}",
      partial: "questions/question", locals: { question: question })
  end

  private

  def client
    @client ||= OpenAI::Client.new
  end

  def questions_formatted_for_openai
    questions = @question.user.questions

    products_list = get_nearest_products.map do |product|
      "name: #{product.name}, description: #{product.description}, price: #{product.price}"
    end

    chat_messages = [{
      role: "system",
      content: <<~SYSTEM_MSG
        You are a helpful assistant for an e-commerce shop.

        Here are some products that we have in our shop:
        #{products_list.join(" | ")}
      SYSTEM_MSG
    }]

    questions.each do |question|
      chat_messages << { "role": "user", "content": question.user_question }
      chat_messages << { "role": "assistant", "content": question.ai_answer } if question.ai_answer.present?
    end
    chat_messages
  end

  def get_nearest_products
    # Get an embedding for the user question
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input: @question.user_question
      }
    )
    question_embedding = response.dig('data', 0, 'embedding')
    # Find the products closest to the user question's embedding
    Product.nearest_neighbors(:embedding, question_embedding, distance: 'euclidean').first(5)
  end
end
