class Book < ApplicationRecord
   belongs_to :user
   has_many :workshops, counter_cache: true

   validates :start_date, presence: true
end
