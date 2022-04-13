# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Status.create(status: "ACTIVE", description: "ACTIVE ACCOUNT")
Role.create(role: "ADMIN", description: "THIS IS AN ADMIN ACCOUNT")
Tag.create(name: "Edit", description: "Edit")
Tag.create(name: "Transcript", description: "Delete")
Tag.create(name: "Translate", description: "View")
Tag.create(name: "Design", description: "Create")