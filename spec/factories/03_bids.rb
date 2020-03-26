FactoryBot.define do
  factory :bid do
    sequence(:amount) {|n| "#{n + 10}"}
    association :user, factory: :user
    association :auction, factory: :auction

    trait :invalid do
      amount {nil}
    end
  end
end
