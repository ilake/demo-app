FactoryBot.define do
  factory :transaction do
    association :payer_wallet, factory: :wallet
    association :payee_wallet, factory: :wallet
    amount_with_currency { Money.zero }
    state { Transaction::PENDING_STATE }

    trait :received do
      state { Transaction::RECEIVED_STATE }
    end
  end
end

