FactoryBot.define do
  factory :user do
    first_name { FFaker::Name.first_name }
    last_name  { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    password {"Password12"}
    password_confirmation { "Password12" }
    admin { false }
  end
end
