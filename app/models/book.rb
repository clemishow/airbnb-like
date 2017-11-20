class Book < ApplicationRecord
   belongs_to :workshop, counter_cache: true
   belongs_to :user
end
