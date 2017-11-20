class Workshop < ApplicationRecord
   mount_uploaders :images, WorkshopGalleryUploader
   validate :images_limit_number, :images_size_validation

   belongs_to :user
   has_many :books, dependent: :destroy

  validates :title,
        presence: true,
        length: { minimum: 5, too_short: "%{count} characters is the minium"},
        length: { maximum: 60, too_long: "%{count} characters is the maximum"}

  # validates :description,
  #           presence: true

#   validates :address,
#             presence: true

#   validates :price,
#             presence: true,
#             numericality: { greater_than_or_equal_to: 1 }

  # Limit size of the image
  private def images_size_validation
    return if images.blank?
    images.each do |image|
      errors[:images] << "Should be less than 1 MO" if image.size > 1.megabytes
    end
  end

  private def images_limit_number 
    return if images.blank?
    errors[:images] << "You can't add more than 2 images" if images.size > 2
  end
end
