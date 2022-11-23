# Seeding images via cloudinary
require "open-uri"

Castle.destroy_all
User.destroy_all

puts "Seeding..."

User.create!(
  first_name: "max",
  last_name: "Wuschko",
  email: "test@gmail.com",
  password: "123456"
)

img_array = ["https://www.alansbouncycastles.com/wp-content/uploads/2015/03/mario-600x600.jpg",
             "https://m.media-amazon.com/images/I/412eGXSE8ZL._AC_SY580_.jpg",
             "https://i.redditmedia.com/k65POYlZkPqoet5hfdkk6F7-HdGtbtgNMuVBzB72AAg.jpg?w=907&s=155b5230fa250d2fbb9520db00841f0c",
             "https://www.bouncycastleonsale.co.uk/image/cache/b/E3-033-800x800.jpg",
             "https://www.xtreme-events.de/wp-content/uploads/zirkus-huepfburg.jpg",
             "https://www.channalinflatables.com/wp-content/uploads/combo/5/CHB774a-750x563.jpg",
             "https://img.ebay-kleinanzeigen.de/api/v1/prod-ads/images/85/859881ab-f74d-44c3-bd3b-a7f2fe01cac4?rule=$_59.JPG",
             "https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_900/555085296cea39a3232032c031c0ae32",
             "https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_900/be136c2b4c30a9f1888feb603968f32b",
             "https://img.freepik.com/free-photo/full-shot-kid-playing-bounce-house_23-2149551612.jpg?w=2000"]

5.times do
  file = URI.open(img_array.sample)
  castle = Castle.new(
    name: Faker::Name.name,
    location: "Fraunhoferstraße 6 80469 München Bavaria",
    description: Faker::TvShows::SouthPark.quote,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user_id: User.last.id
  )
  castle.photos.attach(io: file, filename: "castle.png", content_type: "image/png")
  castle.save!
end

puts "Seeding done."
