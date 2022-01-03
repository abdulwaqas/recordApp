class Supplier < ApplicationRecord
    validates :name, presence: true
    has_many :s_transaction, dependent: :destroy

end
