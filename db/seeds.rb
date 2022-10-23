# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unless User.find_by(email: 'admin@post.com').present?
    user = User.create(email: 'admin@post.com', password: 'test1234')
    user.add_role :admin
end

unless User.find_by(email: 'lawyer@post.com').present?
    user = User.create(email: 'lawyer@post.com', password: 'test1234')
    user.add_role :lawyer
end

unless User.find_by(email: 'user@post.com').present?
    user = User.create(email: 'user@post.com', password: 'test1234')
    user.add_role :user
end