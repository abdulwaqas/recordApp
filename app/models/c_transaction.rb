class CTransaction < ApplicationRecord

  validates :title , presence: true

  belongs_to :customer
  belongs_to :user


end
