class Provider < ApplicationRecord
  belongs_to :user
  validates :phone, presence: true
  validates :address, presence: true
end
