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
class WalletSerializer
  include FastJsonapi::ObjectSerializer

  attribute :balance do |wallet|
    wallet.balance_with_currency.fractional
  end

  attribute :currency do |wallet|
    wallet.balance_with_currency.currency.id
  end

  attribute :transactions do |wallet|
    wallet.transactions.recent.map do |transaction|
      TransactionSerializer.new(transaction).attributes_hash
    end
  end
end
