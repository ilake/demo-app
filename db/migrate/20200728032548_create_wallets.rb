class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.references :user, null: false
      t.decimal :balance, null: false, default: 0
    end
  end
end
