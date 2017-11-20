# README

## Requirements 

Setup environement variable for the S3 AWS Bucket : 
```shell
export AWS_ACCESS_KEY_ID='<AWS_ACCESS_KEY_ID>'
export AWS_SECRET_ACCESS_KEY='<AWS_SECRET_ACCESS_KEY>'
export AWS_REGION='<AWS_REGION>'
export AWS_BUCKET='<AWS_BUCKET>'
```

Plugins | Version
--- | ---
Ruby | 2.3.3+
Rails | 5.1.4+
PostreSQL | 10.1+

## To do 

* Prevent search when there is no keywork and handle no result search

## Problems 

* `routes.rb` :
```ruby 
# Getting a error on users/workshops/new submit : No route matches [POST] "/workshops"
resources :workshops, only: [:show, :index] 

# forced to put a scope module instead of a namespace because there is an error when running workshops_controller.rb
scope module: 'workshops' do 
  resources :search, only: [:index], controller: 'search'
end
```