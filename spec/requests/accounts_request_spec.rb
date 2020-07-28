require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  it "returns ok" do
    wallet = FactoryBot.create(:wallet, balance_with_currency: 1.to_money)
    transaction = FactoryBot.create(:transaction, payer_wallet: wallet)

    get account_path(wallet.user, format: :json)

    result = JSON.parse(response.body)
    expected_result = {
      "data" => {
        "id" => wallet.id.to_s,
        "type" => "wallet",
        "attributes" => {
          "balance" => wallet.balance_with_currency.fractional,
          "currency" => wallet.balance_with_currency.currency.id.to_s,
          "transactions" => [
            {
              "balance" => transaction.amount_with_currency.fractional,
              "currency" => transaction.amount_with_currency.currency.id.to_s,
              "state" => transaction.state
            }
          ]
        }
      }
    }

    expect(response.status).to eq(200)
    expect(result).to eq(expected_result)
  end

  context "when there is no match user" do
    it "raises exception" do
      expect {
        get account_path(Faker::Number.number, format: :json)
      }.to raise_exception(ActiveRecord::RecordNotFound)
    end
  end
end
