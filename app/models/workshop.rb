class Workshop < ApplicationRecord
   mount_uploaders :images, WorkshopGalleryUploader
   validate :images_limit_number, :images_size_validation

   belongs_to :user
   has_many :books, dependent: :destroy

  validates :title,
        presence: true,
        length: { minimum: 5, too_short: "%{count} characters is the minium"},
        length: { maximum: 60, too_long: "%{count} characters is the maximum"},
        case_sensitive: false

  validates :description,
            presence: true

  validates :address,
            presence: true

  validates :price,
            presence: true,
            numericality: { greater_than_or_equal_to: 1 }

  validates :artists_max,
          presence: true,
          numericality: { greater_than_or_equal_to: 1 }

  validates :images, presence: { message: "You need to add at least one image" }

  # Limit size of the image
  private def images_size_validation
    return if images.blank?
    images.each do |image|
      errors[:images] << "Should be less than 1 MO" if image.size > 1.megabytes
    end
  end

  private def images_limit_number 
    return if images.blank?
    errors[:images] << "You can't add more than 4 images" if images.size > 4
  end
end
