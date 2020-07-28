class Transaction < ApplicationRecord
  PENDING_STATE = 1
  RECEIVED_STATE = 1

  belongs_to :payer_wallet, class_name: "Wallet"
  belongs_to :payee_wallet, class_name: "Wallet"

  scope :recent, -> { where("created_at > ?", 1.week.ago) }
  monetize :amount, as: "amount_with_currency"

  enum state: {
    PENDING_STATE => 0,
    RECEIVED_STATE => 1
  }
end
