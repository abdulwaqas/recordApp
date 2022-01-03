class Customer < ApplicationRecord
    validates :name, presence: true
    has_many :c_transaction, dependent: :destroy
end
