class CreateSTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :s_transactions do |t|
      t.string :title
      t.string :details
      t.integer :credit
      t.integer :debit
      t.integer :balance
      t.belongs_to :supplier, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
