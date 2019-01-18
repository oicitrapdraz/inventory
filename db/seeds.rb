# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create!(id: 1, name: 'Super Admin', email: 'psard@gmail.com', password: '123456', password_confirmation: '123456', super_admin: true)
Company.create!(id: 2, name: 'Jumbo', email: 'psard@jumbo.cl', password: '123456', password_confirmation: '123456', super_admin: false)
Company.create!(id: 3, name: 'Falabella', email: 'psard@pfallabella.cl', password: '123456', password_confirmation: '123456', super_admin: false)

Branch.create!(id: 1, name: 'Bilbao', company_id: 2)
Branch.create!(id: 2, name: 'Vitacura', company_id: 2)
Branch.create!(id: 3, name: 'Providencia', company_id: 3)
Branch.create!(id: 4, name: 'Viña del Mar', company_id: 3)

Worker.create!(id: 1, email: 'psard@gmail.com', password: '123456', password_confirmation: '123456', branch_id: 1)
Worker.create!(id: 2, email: 'patriciosard@gmail.com', password: '123456', password_confirmation: '123456', branch_id: 3)
