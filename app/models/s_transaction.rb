class STransaction < ApplicationRecord
  validates :title , presence: true

  belongs_to :supplier
  belongs_to :user
end
