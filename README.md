# README

## Requirements 

Setup environement variable for the S3 AWS Bucket : 
```shell
export AWS_ACCESS_KEY_ID='<AWS_ACCESS_KEY_ID>'
export AWS_SECRET_ACCESS_KEY='<AWS_SECRET_ACCESS_KEY>'
export AWS_REGION='<AWS_REGION>'
export AWS_BUCKET='<AWS_BUCKET>'
export AIRBNB_USER'<AIRBNB_USER>'
export AIRBNB_PASSWORK'<AIRBNB_PASSWORD>'
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
# fixed ?
resources :workshops, only: [:show, :index] 

# forced to put a scope module instead of a namespace because there is an error when running workshops_controller.rb
# fixed ?
scope module: 'workshops' do 
  resources :search, only: [:index], controller: 'search'
end
```

## Features 

#### GLOBAL
* Register an account with a confirmation mail
* AWS S3 Bucket for images uploaded 

#### USERS
* Register / login 
* Book an workshop
* Create an workshop 
* See your books 
* Search an workshop by title
* See yours rent workshops 

#### ADMIN
* Log in admin space
* Retrive all users and show detail + delete if necessary 