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
require 'rails_helper'

RSpec.describe Wallet, type: :model do
  it "returns expected balance result" do
    wallet = FactoryBot.create(:wallet)

    expect(wallet.balance_with_currency).to eq(Money.zero)
  end
end
