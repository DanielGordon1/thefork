class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, allow_blank: false
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
