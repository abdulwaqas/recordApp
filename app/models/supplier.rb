class Supplier < ApplicationRecord
    has_many :s_transaction, dependent: :destroy

end
