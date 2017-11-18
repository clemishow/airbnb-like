class Workshop < ApplicationRecord
   mount_uploaders :images, WorkshopGalleryUploader
end
