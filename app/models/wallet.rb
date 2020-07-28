# == Schema Information
#
# Table name: wallets
#
#  id      :bigint           not null, primary key
#  balance :decimal(, )      default(0.0), not null
#  user_id :bigint           not null
#
# Indexes
#
#  index_wallets_on_user_id  (user_id)
#
class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions, foreign_key: :payer_wallet_id

  monetize :balance, as: "balance_with_currency"
end
