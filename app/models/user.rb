class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  
  has_many :workshops
  has_many :books

  def book(workshop)
    books.find_or_create_by(workshop: workshop)
  end
end
