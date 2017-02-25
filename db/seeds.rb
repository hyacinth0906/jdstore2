# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "doris@test.com"

u.password = "123456"

u.password_confirmation = "123456"

u.is_admin = true
u.save

products =[{title:"X线拍片检查预约",
	        description: "包括颈、胸、腰、骶椎正侧位片，胸部、腹部正侧位片，肱骨、尺桡骨、股骨、胫腓骨正侧位片，
          腕关节、踝关节、掌、足正侧位片，头颅及骨盆正位片，腺样体侧位片等。",
	        image_path: "#{Rails.root}/app/assets/images/Xray.jpg"},

	        {title:"CT检查及三维成像预约",
	        description: "包括头颈、胸腹、双侧上、下肢及冠脉CTA，头部、颈部、胸部、腹部、盆腔、上、下肢、手及足平扫及增强检查。",
	        image_path: "#{Rails.root}/app/assets/images/ct.gif"},

          {title:"MRI检查预约",
          description: "包括头部、颈部、胸部、腹部、盆腔、上、下肢常规平扫及增强检查，
          非对比剂头部、颈部、胸腹血管造影成像，另有新技术DWI、 PWI、 SWI、MRS的检查",
          image_path: "#{Rails.root}/app/assets/images/mri.gif"},

          {title:"非本影像中心图像诊断预约",
           description: "非本影像中心图像诊断预约知名教授诊断阅片",
           image_path: "#{Rails.root}/app/assets/images/prof.jpg"}
]

u = User.create([ email: 'a@a.com' ,  password: '123456' ,password_confirmation:'123456',is_admin:true])
puts "create a adminer"

p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:999,price:200,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:999,price:500,image:open(products[1][:image_path])])
p3 = Product.create([title:products[2][:title],description:products[2][:description],quantity:999,price:1000,image:open(products[2][:image_path])])
p4 = Product.create([title:products[3][:title],description:products[3][:description],quantity:999,price:100,image:open(products[3][:image_path])])
puts "create products"
