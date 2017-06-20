# README

This README would normally document whatever steps are necessary to get the
application up and running.


```
rails generate scaffold Collection title:string description:string
rails generate scaffold Album title:string description:string collection:references
rails generate scaffold Photo name:string description:text path:string date_time_original:datetime width:integer height:integer exposure_time:float f_number:float model:string make:string copyright:string iso_speed_ratings:integer aperture_value:float max_aperture_value:float focal_length:float
rails g migration add_image_to_photo image:string
rails g migration add_image_to_collection image:string
```


## Run

```
# ubuntu
sudo apt-get install libmagickwand-dev
bundle install
rails db:migrate
rails s
```

## Deps

https://github.com/carrierwaveuploader/carrierwave
http://railscasts.com/episodes/253-carrierwave-file-uploads

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Others

- Try `git rm -r --cached .idea` in your terminal. It disables the change tracking.

