# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Shop.destroy_all
# Examples:
# Shop.create!(name: "admin", address: "admin",phone: "admin",subdomain: "admin")

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'abc@abc123.com', password: 'abcabc', password_confirmation: 'abcabc') if Rails.env.development?
# AdminUser.find_by_email("abc@abc123.com") || AdminUser.create!(email: "abc@abc123.com", password: "abcabc", password_confirmation: "abcabc")
