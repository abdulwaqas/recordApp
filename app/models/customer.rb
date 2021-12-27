class Customer < ApplicationRecord
    has_many :c_transaction, dependent: :destroy
end
