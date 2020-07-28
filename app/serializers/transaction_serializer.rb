# == Schema Information
#
# Table name: transactions
#
#  id              :bigint           not null, primary key
#  amount          :decimal(, )      default(0.0)
#  state           :integer          default(NULL)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  payee_wallet_id :integer          not null
#  payer_wallet_id :integer          not null
#
# Indexes
#
#  index_transactions_on_payer_wallet_id_and_payee_wallet_id  (payer_wallet_id,payee_wallet_id)
#
class TransactionSerializer
  include FastJsonapi::ObjectSerializer

  attribute :state
  attribute :balance do |transaction|
    transaction.amount_with_currency.fractional
  end

  attribute :currency do |transaction|
    transaction.amount_with_currency.currency.id
  end
end
