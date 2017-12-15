class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  
  has_many :workshops
  has_many :books

  mount_uploader :avatar, AvatarUploader

  def book(workshop)
    workshop.inspect
    books.create(workshop: workshop)
  end
end
