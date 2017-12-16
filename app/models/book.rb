class Book < ApplicationRecord
  belongs_to :user
  has_one :workshop

  validates :start_date, presence: true
  validates :end_date, presence: true
end
