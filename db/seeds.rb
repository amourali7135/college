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
  user_type: "Employer", 
  organization_name: "Fake organization name"
)
user.save!

user = User.new(
  email: 'amir@fake.com',
  password: 'password', 
  first_name: "Amir", 
  last_name: "Mourali", 
  location: "Singapore",
  user_type: "Student", 
  age: 23, 
  bio: Faker::Lorem.sentences(number: 3),
  goal: Faker::Lorem.sentences(number: 1)
)
user.save!
puts 'Finished with the users!'

# puts 'Creating 2 fake programs...'
# program = Program.new{
#   title: "Fake program one", 
#   headline: "Become a faker now!", 
#   description: Faker::Lorem.sentences(number: 3), 
#   rolling: false, 
#   application_due_date: Faker::Date.between(from: 300.days.ago, to: Date.today), 
#   location: "Singapore", 
#   remote: false, 
#   spots: "15", 
#   requirements: Faker::Lorem.sentences(number: 3), 
#   length: Program.length.sample(1), 
#   minimum_age: 16, 
#   visa_sponsorship: false, 
#   start_date: , 
#   virtual_components: false, 
#   housing_provided: false, 
#   essay_one_needed: true, 
#   essay_question_one: "Fake essay one", 
#   essay_one_needed: true, 
#   essay_question_two: "Fake essay two", 
#   essay_one_needed: true, 
#   essay_question_three: "Fake essay three", 
#   salary: false, 
#   salary_paid: 0, 
#   certificate_awarded: true, 
#   active: true, 
#   time_requirement: Program.time_requirement.sample(1), 
#   job_guaranteed: false, 
#   category: Program.category.sample(1), 
#   relocation_assistance: false,
#   user_id: User.find(1)
  
# }
# program.save!

# program = Program.new{
#     title: "Fake program one", 
#     headline: "Become a faker now!", 
#     description: Faker::Lorem.sentences(number: 3), 
#     rolling: false, 
#     location: "Singapore", 
#     remote: false, 
#     spots: "15", 
#     requirements: Faker::Lorem.sentences(number: 3), 
#     length: Program.length.sample(1), 
#     minimum_age: 16, 
#     visa_sponsorship: false, 
#     start_date: , 
#     virtual_components: false, 
#     housing_provided: false, 
#     essay_one_needed: true, 
#     essay_question_one: "Fake essay one", 
#     essay_one_needed: true, 
#     essay_question_two: "Fake essay two", 
#     essay_one_needed: true, 
#     essay_question_three: "Fake essay three", 
#     salary: false, 
#     salary_paid: 0, 
#     certificate_awarded: true, 
#     active: true, 
#     time_requirement: Program.time_requirement.sample(1), 
#     job_guaranteed: false, 
#     category: Program.category.sample(1), 
#     relocation_assistance: false,
#     user_id: User.find(1)
# }
# program.save!