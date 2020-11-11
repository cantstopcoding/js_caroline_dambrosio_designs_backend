# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dresses = Category.create(name: 'Dress')
purses = Category.create(name: 'Purses')
sandles = Category.create(name: 'Sandles')

Item.create([{name: "Outlander Costume", image_url: "https://yt3.ggpht.com/a/AATXAJx5mEunDOUJudzpBNqD61pppw8kcQvgmDHMosko=s100-c-k-c0xffffffff-no-rj-mo", price: 500.00, description:"It's awesome!", user_id: 1, category_id: 1}, {name: "Expensive Purse", image_url: "https://cdn.shopify.com/s/files/1/0384/0161/products/56265-92_20Chanel_20Vintage_20Classic_20Double_20Flap_20Bag_20Qu_2D_0002_518x518.jpg?v=1591021463", price: 100000.00, description:"It's awesome!", user_id: 2, category_id: 2}, {name: "Expensive Sandals", image_url: "//images.neimanmarcus.com/ca/5/product_assets/X/4/E/E/1/NMX4EE1_mu.jpg", price: 5000000000000.54, description: "It's too much damn money", user_id: 3, category_id: 3}])