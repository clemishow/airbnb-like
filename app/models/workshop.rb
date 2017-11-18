class Workshop < ApplicationRecord
   mount_uploaders :images, WorkshopGalleryUploader
   validate :image_size_validation

#   validates :title,
#         presence: true,
#         length: { minimum: 5, too_short: "%{count} characters is the minium"}

  validates :description,
            presence: true

#   validates :address,
#             presence: true

#   validates :price,
#             presence: true,
#             numericality: { greater_than_or_equal_to: 1 }

# Limit size of the image
  private def image_size_validation
    puts images.inspect
  end
end
