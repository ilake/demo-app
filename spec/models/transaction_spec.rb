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
require 'rails_helper'

RSpec.describe Transaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
