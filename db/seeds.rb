# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
  User.create(email: "admin@admin.com", type_user_id: TypeUser::ADMINISTRATOR, password: "admin", password_confirmation: 'admin',
              name: "Alex", last_name: "Burgos", last_mother_name: "González", phone:'9994425654')
