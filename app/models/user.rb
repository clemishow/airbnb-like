class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  
  has_many :workshops
  has_many :books

  def book(workshop)
    workshop.inspect
    books.create(workshop: workshop)
  end
end
