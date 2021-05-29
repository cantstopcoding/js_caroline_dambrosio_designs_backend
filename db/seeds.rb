# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Item.destroy_all
Review.destroy_all

# caroline = User.create(first_name: "Caroline", last_name: "D'ambrosio", username: "bestdesigner", email: "caroline@caroline.com", password: "pw", image_url: "https://i.pinimg.com/originals/77/97/06/7797069f1945e196a01158932146810e.jpg")
# coco = User.create(first_name: "Coco", last_name: "Chanel", username: "chanel", email: "chanel@chanel.com", password: "pw", image_url: "https://cdn.asiatatler.com/asiatatler/i/th/2020/07/24110448-travel9_cover_1000x1500.jpg")
# christian = User.create(first_name: "Christian", last_name: "Dior", username: "dior", email: "dior@dior.com", password: "pw", image_url: "https://www.dior.com/couture/var/dior/storage/images/horizon/horizon-import/dior-et-le-chateau-de-la-colle-noire/block-list-christian-dior-et-la-provence-terre-d’inspiration/block-image2/14526753-4-eng-US/image_1440_1200.jpg")

dresses = Category.create(name: "Dress")
purses = Category.create(name: "Purses")
sandals = Category.create(name: "Sandals")

outlander_dress = Item.create(name: "Outlander Costume", image_url: "https://yt3.ggpht.com/a/AATXAJx5mEunDOUJudzpBNqD61pppw8kcQvgmDHMosko=s100-c-k-c0xffffffff-no-rj-mo", price: 500.00, description: "It's awesome!", category_id: dresses.id)
expensive_purse = Item.create(name: "Expensive Purse", image_url: "https://cdn.shopify.com/s/files/1/0384/0161/products/56265-92_20Chanel_20Vintage_20Classic_20Double_20Flap_20Bag_20Qu_2D_0002_518x518.jpg?v=1591021463", price: 100000.00, description: "It's awesome!", category_id: purses.id)
expensive_sandals = Item.create(name: "Expensive Sandals", image_url: "https://www.mybudapester.com/media/catalog/product/cache/2/image/900x900/9df78eab33525d08d6e5fb8d27136e95/i/m/image_3681_1_5394.jpg", price: 5000000000000.54, description: "It's too much damn money", category_id: sandals.id)

coco_review = Review.create(content: "Nice Dress!", item_id: outlander_dress.id)
christian_review = Review.create(content: "Wow!", item_id: expensive_purse.id)
christian_review2 = Review.create(content: "These are greatest sandals ever!", item_id: expensive_sandals.id)
caroline_review = Review.create(content: "Cool!", item_id: expensive_sandals.id)
caroline_review2 = Review.create(content: "This is a really nice purse!", item_id: expensive_purse.id)
