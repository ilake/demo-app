FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    user_type { User::NORMAL_TYPE }

    trait :devleoper do
      user_type { User::DEVELOPER_TYPE }
    end
  end
end

