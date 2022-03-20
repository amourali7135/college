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
  organization_name: "Fake organization name",
)
  user.photo.attach(io: File.open('app/assets/images/bourdain.jpg'), filename: 'bourdain.jpg', content_type: 'image/jpg')
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
  goal: Faker::Lorem.sentences(number: 1),
)
user.photo.attach(io: File.open('app/assets/images/bourdain.jpg'), filename: 'bourdain.jpg', content_type: 'image/jpg')
user.save!
puts 'Finished with the users!'

puts 'Creating 2 fake programs...'
program = Program.new(
  title: "Fake program one", 
  headline: "Become a faker now!", 
  description: Faker::Lorem.sentences(number: 3), 
  rolling: false, 
  application_due_date: Faker::Date.forward(days: 90), 
  location: "Singapore", 
  remote: false, 
  spots: 15, 
  requirements: Faker::Lorem.sentences(number: 3), 
  length: Program.length.sample(1), 
  minimum_age: 16, 
  visa_sponsorship: false, 
  start_date: Faker::Date.forward(days: 90), 
  virtual_components: false, 
  housing_provided: false, 
  essay_one_needed: true, 
  essay_question_one: "Fake essay one", 
  essay_two_needed: true, 
  essay_question_two: "Fake essay two", 
  essay_three_needed: true, 
  essay_question_three: "Fake essay three", 
  salary: false, 
  salary_paid: 0, 
  cost: 0, 
  certificate_awarded: true, 
  nationals_only: true, 
  # status: Active, 
  time_requirement: Program.time_requirement.sample(1), 
  job_guaranteed: false, 
  category: Program.category.sample(1), 
  relocation_assistance: false,
  user_id: User.first.id
)
program.save!

program = Program.new(
  title: "Fake program two", 
  headline: "Become a faker now...again!", 
  description: Faker::Lorem.sentences(number: 3), 
  rolling: true, 
  application_due_date: Faker::Date.forward(days: 90), 
  location: "Brunei", 
  remote: true, 
  spots: 15, 
  requirements: Faker::Lorem.sentences(number: 3), 
  length: Program.length.sample(1), 
  minimum_age: 16, 
  visa_sponsorship: false, 
  # start_date: Faker::Date.forward(days: 90), 
  virtual_components: false, 
  housing_provided: false, 
  essay_one_needed: true, 
  essay_question_one: "Fake essay one", 
  essay_two_needed: true, 
  essay_question_two: "Fake essay two", 
  essay_three_needed: true, 
  essay_question_three: "Fake essay three", 
  salary: false, 
  salary_paid: 0, 
  cost: 0, 
  certificate_awarded: true, 
  nationals_only: true, 
  # status: Active, 
  time_requirement: Program.time_requirement.sample(1), 
  job_guaranteed: false, 
  category: Program.category.sample(1), 
  relocation_assistance: false,
  user_id: User.first.id
)
program.save!
puts "Finished with the programs"