FactoryBot.define do
  factory :auction do
    sequence(:title) {|n| "Subaru Forester no. #{n}!"}
    sequence(:make)  {|n| "Subaru no. #{n}!"}
    current_price { 10.0 }
    association :user
  end
end
