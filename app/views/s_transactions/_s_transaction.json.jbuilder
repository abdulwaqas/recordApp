json.extract! s_transaction, :id, :title, :details, :credit, :debit, :balance, :supplier_id, :user_id, :created_at, :updated_at
json.url s_transaction_url(s_transaction, format: :json)
