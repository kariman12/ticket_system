# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
id: 2,
name: "admin", 
part: "vn", 
generation: "43",
password: 'admin_kangen', 
password_confirmation: 'admin_kangen', 
admin: true,
created_at: "2020-09-20 02:33:34", 
updated_at: "2020-09-20 02:33:34")