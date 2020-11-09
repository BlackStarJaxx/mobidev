# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* The library is used  Octokit, to work with api GitHub

* If you are using another version of Ruby, you need to download / change the Ruby version to 2.7.0 $ rvm install 2.7.0 or
* rvm use 2.7.0

* To start working with the project, you need to run the command bundlle install 

* To get you a github token, you need to uncomment lines 8 and 9 in controllers / mobidev_controller.rb, and comment out line 7

* Next, if you are using IDEA RubyMine, go to the Run tab and click Run 'Development: MobiDev'

* Those two lines of code will make a request to the HitHub, generate a token called admin script, 
then you need to go to your hit hub account, in the settings section Developer settings, 
in the tab personal access token, there will be your token, go regenerate it, and insert into line 7 in mobidev_controller.rb, 
and insert it instead of the name "admin script token"

* Then comment there on lines 8 and 9
   everything, the application is ready to work
* Now you can enter command "rails s" ,so you run the project in a browser    