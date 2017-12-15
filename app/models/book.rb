class Book < ApplicationRecord
   belongs_to :user
   has_many :workshops, counter_cache: true

   validates :start_date, presence: true
   validates :end_date, presence: true
   validate :total_price, on: :create

  # def total_price
  #   puts 'workshopsssss ' + self.workshops.first.inspect
  #   self.start_date.to_i - self.end_date.to_i * self.workshops.first.price
  # end 
end
