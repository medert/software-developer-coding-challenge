FactoryBot.define do
  factory :auction do
    title {"Subaru Forester"}
    make  {"Subaru"}
    current_price { 10.0 }
    association :user
  end
end
