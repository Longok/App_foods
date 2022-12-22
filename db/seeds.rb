# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "admin",
    email: "admin@gmail.com",
    password: "123123",
    password_confirmation: "123123"
)

Category.create([{ name: "Sữa chua"}, { name: "Sữa bột"}, { name: "Sữa tươi"}])

p1 = Product.create!(name: "Sữa chua Vinamilk Star",
    price: 280000,
    category_id: 1,
    describe: "Sử dụng công nghệ lên men tự nhiên với chủng men thuần khiết Bulgaricus, sữa chua ăn Vinamilk mang hương vị tươi ngon, thanh khiết đặc trưng và có bổ sung Canxi và Vitamin D3, giúp cơ thể hấp thu dưỡng chất tốt hơn, mang lại hệ xương chắc khoẻ và giúp cho gia đình bạn luôn năng động, vui khoẻ mỗi ngày."
)
p1.image.attach(io: File.open(Rails.root.join('app/assets/images/scstar.png')), filename: 'scstar.png')

p2 = Product.create!(name: "Sữa chua Vinamilk Có Đường",
    price: 290000,
    category_id: 1,
    describe: "Sử dụng công nghệ lên men tự nhiên với chủng men thuần khiết Bulgaricus, sữa chua ăn Vinamilk mang hương vị tươi ngon, thanh khiết đặc trưng và có bổ sung Canxi và Vitamin D3, giúp cơ thể hấp thu dưỡng chất tốt hơn, mang lại hệ xương chắc khoẻ và giúp cho gia đình bạn luôn năng động, vui khoẻ mỗi ngày."
)
p2.image.attach(io: File.open(Rails.root.join('app/assets/images/coduong.png')), filename: 'coduong.png')

p3 = Product.create!(name: "Sữa chua Vinamilk Love Green",
    price: 300000,
    category_id: 1,
    describe: "Sử dụng công nghệ lên men tự nhiên với chủng men thuần khiết Bulgaricus, sữa chua ăn Vinamilk mang hương vị tươi ngon, thanh khiết đặc trưng và có bổ sung Canxi và Vitamin D3, giúp cơ thể hấp thu dưỡng chất tốt hơn, mang lại hệ xương chắc khoẻ và giúp cho gia đình bạn luôn năng động, vui khoẻ mỗi ngày."
)
p3.image.attach(io: File.open(Rails.root.join('app/assets/images/love.png')), filename: 'love.png')

p4 = Product.create!(name: "Sữa chua Vinamilk Love Nếp Cẩm",
    price: 305000,
    category_id: 1,
    describe: "Sử dụng công nghệ lên men tự nhiên với chủng men thuần khiết Bulgaricus, sữa chua ăn Vinamilk mang hương vị tươi ngon, thanh khiết đặc trưng và có bổ sung Canxi và Vitamin D3, giúp cơ thể hấp thu dưỡng chất tốt hơn, mang lại hệ xương chắc khoẻ và giúp cho gia đình bạn luôn năng động, vui khoẻ mỗi ngày."
)
p4.image.attach(io: File.open(Rails.root.join('app/assets/images/lovenepcam.png')), filename: 'lovenepcam.png')