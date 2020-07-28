FactoryBot.define do
  factory :wallet do
    association :user
    balance_with_currency { Money.zero }
  end
end

