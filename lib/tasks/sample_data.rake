namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Robbie Fowler",
                 email: "rob@lfc.com",
                 password: "farter",
                 password_confirmation: "farter",
                 organization_id: 1)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   organization_id: 1)
    end
  end
end