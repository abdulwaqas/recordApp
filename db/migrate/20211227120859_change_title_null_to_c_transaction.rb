class ChangeTitleNullToCTransaction < ActiveRecord::Migration[6.1]
  def change
    change_column_null :c_transactions, :title, false

  end
end
