require 'faker'

puts "Destroy everything"

# Application.destroy_all
Program.destroy_all
User.destroy_all

puts 'Creating 2 fake users...'
user = User.new(
  email: 'amir@mourali.com',
  password: 'password', 
  first_name: "Amir", 
  last_name: "Mourali", 
  location: "Singapore", 
  employer: true, 
  organization_name: "Fake organization name"
)
user.save!
user = User.new(
  email: 'amir@fake.com',
  password: 'password', 
  first_name: "Amir", 
  last_name: "Mourali", 
  location: "Singapore",
  employer: false, 
  age: 23

)
user.save!
puts 'Finished!'