# Seeding images via cloudinary
require "open-uri"

Castle.destroy_all
User.destroy_all

puts "Seeding User"

richie = User.create!(
  first_name: "Richie",
  last_name: "Rich",
  email: "richie@rich.com",
  password: "123456",
)

# avatar: "https://crops.giga.de/6e/3a/f9/36319a8977c847dfcb98a74c15_YyAxNjI1eDE2MjUrMzI3KzUCcmUgMTIwMCAxMjAwAzZhMzE4NzRmOTcx.jpg"





castle1= Castle.create!({name: "Captn Hook",
  location: "Berlin",
  description: "Ahoi on board of Captn Hook's ship. Don't jump offboard",
  price: "250",
  user: richie,
  })

  file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL44220kVzATVJ0y56EoyZscGdp_FPtchAsA&usqp=CAU")
  castle1.photos.attach(io: file1, filename: "castle.png", content_type: "image/png")

castle2= Castle.create({name: "Crazy Circus", location: "Berlin", description: "Come to the circus you wild animal! Higher, higher, higher you wild beast", price:"350", user: richie})

  file2 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUOZGzTk_rM_RGyPRjO6zsiFN3tZKnRSSs6A&usqp=CAU")

  castle2.photos.attach(io: file2, filename: "castle.png", content_type: "image/png")


castle3= Castle.create({name: "Monsters Inc", location: "Düsseldorf", description: "Will you jump into a sleepover party or will it turn out as your worst nightmare?", price:"150", user: richie})

  file3 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3w7a3neREilv-CB4MTRaLNcjZyJoC7u4QXA&usqp=CAU")
  castle3.photos.attach(io: file3, filename: "castle.png", content_type: "image/png")

castle4= Castle.create({name: "Siren's Desire", location: "Bali", description: "Follow Lorelai's call and jump aboard. Child-friendly", price: "120", user: richie })
  file4 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6p4EtN_H1ENqJGkoGaAZLLLOmnn85vtCDBw&usqp=CAU")
  castle4.photos.attach(io: file4, filename: "castle.png", content_type: "image/png")

castle5= Castle.create({name: "Happy Hippo", location: "Capetown", description: "Prepare to die! This hungry hippo will swallow you alive!", price: "80", user: richie})
  file5= URI.open("https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_800/068afc704978406c64b698a025bd1bc7")
  castle5.photos.attach(io: file5, filename: "castle.png", content_type: "image/png")

castle6= Castle.create({name: "Hansel & Gretel", location: "Los Angeles", description: "Come to this fun house, it", price: "60", user: richie})
  file6= URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO27jhcqjUxdskGzFbiKZwEAlWb0D826gIVg&usqp=CAU")
  castle6.photos.attach(io: file6, filename: "castle.png", content_type: "image/png")


castle8= Castle.create({name: "Penis Kingdom", location: "Berlin", description: "Have a wild ride on me", price:"69", user: richie})
  file8= URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbMWnz2o-lvA0UJsEnNMIjxEwNbf3Opj2hQA&usqp=CAU")
  castle8.photos.attach(io: file8, filename: "castle.png", content_type: "image/png")

castle9= Castle.create({name: "Holy Grail" , location: "Vatikan", description: "Jump right into heaven" , price: "666" , user: richie})
  file9= URI.open("https://image.made-in-china.com/202f0j00GmYTKHMtYkqW/Wedding-Rental-Place-Inflatable-Church-Castle.jpg")
  castle9.photos.attach(io: file9, filename: "castle.png", content_type: "image/png")

castle10= Castle.create({name: "Boobie Land", location: "Paris", description: "Jump right into heaven" , price: "69", user: richie})
  file10= URI.open("https://metro.co.uk/wp-content/uploads/2014/06/screenshot-2014-06-28-07-20-11.png")
  castle10.photos.attach(io: file10, filename: "castle.png", content_type: "image/png")

castle7= Castle.create({name: "Super Mario", location: "Rome", description: "Mama mia! Issa meeee, MARIO!", price: "88", user: richie})
  file7= URI.open("https://www.alansbouncycastles.com/wp-content/uploads/2015/03/mario-600x600.jpg")
  castle7.photos.attach(io: file7, filename: "castle.png", content_type: "image/png")

castle11= Castle.create({name: "Octopussy" , location: "London", description: "James Bond got lost here" , price: "888" , user: richie})
  file11= URI.open("https://secure.img1-cg.wfcdn.com/im/29779699/resize-h755-w755%5Ecompr-r85/1421/142136559/16%27+x+10%27+Inflatable+Water+Slide+with+Air+Blower.jpg")
  castle11.photos.attach(io: file11, filename: "castle.png", content_type: "image/png")

castle12= Castle.create({name: "Jurassic Park" , location: "Hawaii" , description: "Don't fall on your face when running from the dinosaur" , price: "230" , user: richie})
  file12= URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8N_ZcZOJHC7WxlKDRi90osyzYk_aCkN4uLQ&usqp=CAU")
  castle12.photos.attach(io: file12, filename: "castle.png", content_type: "image/png")

# castle10= Castle.create({name: , location:, description: , price: , user: richie})

puts "Finished custom!"

puts "Loading Max "

img_array = ["https://m.media-amazon.com/images/I/412eGXSE8ZL._AC_SY580_.jpg",
             "https://i.redditmedia.com/k65POYlZkPqoet5hfdkk6F7-HdGtbtgNMuVBzB72AAg.jpg?w=907&s=155b5230fa250d2fbb9520db00841f0c",
             "https://www.bouncycastleonsale.co.uk/image/cache/b/E3-033-800x800.jpg",
             "https://www.xtreme-events.de/wp-content/uploads/zirkus-huepfburg.jpg",
             "https://www.channalinflatables.com/wp-content/uploads/combo/5/CHB774a-750x563.jpg",
             "https://img.ebay-kleinanzeigen.de/api/v1/prod-ads/images/85/859881ab-f74d-44c3-bd3b-a7f2fe01cac4?rule=$_59.JPG",
             "https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_900/555085296cea39a3232032c031c0ae32",
             "https://bouncycastlenetwork-res.cloudinary.com/image/upload/f_auto,q_auto,c_limit,w_900/be136c2b4c30a9f1888feb603968f32b",
             "https://img.freepik.com/free-photo/full-shot-kid-playing-bounce-house_23-2149551612.jpg?w=2000"]

15.times do
  file = URI.open(img_array.sample)
  castle = Castle.new(
    name: Faker::Name.name,
    location: "Fraunhoferstraße 6 80469 München Bavaria",
    description: Faker::Movies::HarryPotter.quote,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user_id: User.last.id
  )
  castle.photos.attach(io: file, filename: "castle.png", content_type: "image/png")
  castle.save!
end

puts "Finished!"
