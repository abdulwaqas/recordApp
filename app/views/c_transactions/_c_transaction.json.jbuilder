json.extract! c_transaction, :id, :title, :details, :credit, :debit, :balance, :customer_id, :user_id, :created_at, :updated_at
json.url c_transaction_url(c_transaction, format: :json)
