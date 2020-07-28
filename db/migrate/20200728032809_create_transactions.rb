class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :payer_wallet_id, null: false
      t.integer :payee_wallet_id, null: false
      t.decimal :amount, default: 0
      t.integer :state, default: 0

      t.timestamps
    end

    add_index :transactions, [:payer_wallet_id, :payee_wallet_id]
  end
end
