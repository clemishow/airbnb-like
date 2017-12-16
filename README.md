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

* Style  : worskshop#show / books#index / books#show / header / user#show / date range picker (3)
* Fix model book.rb with total_price (1.5)
* Refactoring code from controller without MySQL (0.25)
* Book#create : add 
* Add avatar on Workshop with identity of the owner 

## Features 

#### GLOBAL
* Register an account with a confirmation mail
* AWS S3 Bucket for images uploaded 
* Redirect if error 404 or 500

#### USERS
* Register / login 
* Book an workshop
* Create an workshop 
* See your books 
* Search an workshop by title
* See yours rent workshops 
* User profile 

#### ADMIN
* Log in admin space
* Retrive all users and show detail + delete if necessary 