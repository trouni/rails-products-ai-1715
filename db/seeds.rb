Question.destroy_all
Product.destroy_all

products = [{
  name: "Blue Denim Jeans",
  description: "A pair of premium blue denim jeans with a slim fit, ideal for a casual yet stylish look.",
  price: 55
},
{
  name: "White Oxford Shirt",
  description: "A classic white oxford shirt featuring a front pocket and button-down collar, perfect for formal occasions.",
  price: 35
},
{
  name: "Black Leather Dress Shoes",
  description: "Elegant black leather dress shoes with a comfortable cushioned insole, ideal for business and formal events.",
  price: 85
},
{
  name: "Red Baseball Cap",
  description: "A vibrant red baseball cap made of breathable cotton, featuring an adjustable strap for a perfect fit.",
  price: 15
},
{
  name: "Oak Dining Chair",
  description: "A solid oak dining chair with a cushioned seat and ergonomic design for long-lasting comfort.",
  price: 75
},
{
  name: "Glass Top Dining Table",
  description: "A sleek dining table with a tempered glass top and sturdy metal legs, perfect for modern interiors.",
  price: 180
},
{
  name: "Leather Reclining Sofa",
  description: "A luxurious leather reclining sofa with adjustable headrests and built-in cup holders.",
  price: 550
},
{
  name: "Queen-Sized Memory Foam Bed",
  description: "A queen-sized bed with a memory foam mattress for superior comfort and support, ensuring a restful night's sleep.",
  price: 700
},
{
  name: "Bamboo Coffee Table",
  description: "An eco-friendly bamboo coffee table with a minimalist design, perfect for contemporary living rooms.",
  price: 90
},
{
  name: "Wall-Mounted Bookshelf",
  description: "A versatile wall-mounted bookshelf with five tiers, ideal for displaying books and decorative items.",
  price: 60
},
{
  name: "Stainless Steel Cutlery Set",
  description: "A 24-piece stainless steel cutlery set with a modern design, including forks, knives, and spoons.",
  price: 45
},
{
  name: "Ceramic Dinnerware Set",
  description: "A 16-piece ceramic dinnerware set in a matte finish, including plates, bowls, and mugs.",
  price: 65
},
{
  name: "Bluetooth Wireless Earbuds",
  description: "Compact Bluetooth wireless earbuds with noise cancellation and a charging case, perfect for on-the-go listening.",
  price: 120
},
{
  name: "Smart LED Desk Lamp",
  description: "A smart LED desk lamp with adjustable brightness and color temperature, controlled via a mobile app.",
  price: 40
},
{
  name: "Portable Charcoal Grill",
  description: "A portable charcoal grill with a foldable design, ideal for outdoor barbecues and camping trips.",
  price: 85
},
{
  name: "Water-Resistant Hiking Backpack",
  description: "A durable, water-resistant hiking backpack with multiple compartments and a hydration reservoir pocket.",
  price: 110
},
{
  name: "Electric Kettle with Temperature Control",
  description: "A stainless steel electric kettle with precise temperature control and a keep-warm function.",
  price: 65
},
{
  name: "Fitness Tracker Watch",
  description: "A sleek fitness tracker watch with heart rate monitoring, step counting, and sleep tracking features.",
  price: 75
},
{
  name: "Espresso Machine with Milk Frother",
  description: "A compact espresso machine with an integrated milk frother, perfect for making lattes and cappuccinos at home.",
  price: 200
},
{
  name: "Ultra HD 4K Smart TV",
  description: "A 55-inch Ultra HD 4K Smart TV with vibrant picture quality and built-in streaming apps.",
  price: 600
},
{
  name: "Stainless Steel Water Bottle",
  description: "A double-walled stainless steel water bottle that keeps drinks cold for 24 hours and hot for 12 hours.",
  price: 25
},
{
  name: "Wireless Charging Pad",
  description: "A sleek wireless charging pad compatible with all Qi-enabled devices, providing fast and efficient charging.",
  price: 30
},
{
  name: "Noise-Cancelling Over-Ear Headphones",
  description: "Premium noise-cancelling over-ear headphones with immersive sound and long battery life.",
  price: 150
},
{
  name: "Cordless Stick Vacuum Cleaner",
  description: "A lightweight cordless stick vacuum cleaner with powerful suction and a long-lasting battery.",
  price: 220
},
{
  name: "Ergonomic Office Chair",
  description: "An ergonomic office chair with lumbar support, adjustable armrests, and breathable mesh back.",
  price: 140
},
{
  name: "Electric Standing Desk",
  description: "An adjustable electric standing desk with programmable height settings and a spacious tabletop.",
  price: 350
},
{
  name: "Professional Chef's Knife",
  description: "A high-carbon stainless steel chef's knife with an ergonomic handle, perfect for precision cutting.",
  price: 70
},
{
  name: "Multi-Cooker with Pressure Cooking",
  description: "A versatile multi-cooker with pressure cooking, slow cooking, and steaming functions, making meal prep easy.",
  price: 130
},
{
  name: "Smart Home Security Camera",
  description: "A wireless smart home security camera with motion detection, night vision, and cloud storage options.",
  price: 90
},
{
  name: "Adjustable Dumbbell Set",
  description: "An adjustable dumbbell set with customizable weight settings, ideal for strength training at home.",
  price: 180
}]

products.each do |product|
  puts "Creating product: #{product[:name]}"
  Product.create!(product)
end