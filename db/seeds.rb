# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "admin", 
    part: "vn", 
    generation: "43",
    password: 'admin_kangen', 
    password_confirmation: 'admin_kangen', 
    admin: true,
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")
    
User.create(
    name: "中野茉里香", 
    part: "vn", 
    generation: "43",
    password: 'kangen', 
    password_confirmation: 'kangen', 
    admin: false,
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

User.create(
    name: "古川ありさ", 
    part: "fl", 
    generation: "47",
    password: 'kangen', 
    password_confirmation: 'kangen', 
    admin: false,
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

User.create(
    name: "富山太郎", 
    part: "tp", 
    generation: "39",
    password: 'kangen', 
    password_confirmation: 'kangen', 
    admin: false,
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "2", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:Date.today-2, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "2", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:Date.today-2, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "2", 
    status: "配布済",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:"", 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "2", 
    status: "配布待ち",
    request_dates:Date.today, 
    get_dates:"", 
    sold_dates:"", 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "3", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today, 
    sold_dates:Date.today, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "3", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:Date.today-2, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "3", 
    status: "配布済",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:"", 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "3", 
    status: "配布待ち",
    request_dates:Date.today, 
    get_dates:"", 
    sold_dates:"", 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "4", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:Date.today-2, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "4", 
    status: "販売完了",
    request_dates:Date.today-3, 
    get_dates:Date.today, 
    sold_dates:Date.today, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "4", 
    status: "配布済",
    request_dates:Date.today-3, 
    get_dates:Date.today-2, 
    sold_dates:"", 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")

Ticket.create(
    user_id: "4", 
    status: "配布待ち",
    request_dates:Date.today, 
    get_dates:Date.today, 
    sold_dates:Date.today, 
    created_at: "2020-09-20 02:33:34", 
    updated_at: "2020-09-20 02:33:34")