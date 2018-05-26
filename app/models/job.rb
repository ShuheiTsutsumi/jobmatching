class Job < ApplicationRecord
  has_many :users
  has_many :categories
  validates :name, presence: true, length: { maximum: 50 }
  has_many :syodans
end
