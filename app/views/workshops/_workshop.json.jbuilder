json.extract! workshop, :id, :title, :description, :address, :grade, :price, :images, :created_at, :updated_at
json.url workshop_url(workshop, format: :json)
