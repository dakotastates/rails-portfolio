# README

A simple and clean Fullstack software engineering Portfolio Website for Dakota States. Simplicity is sometimes best for what you might want to achieve. For this portfolio website, ruby on rails was used to create the sites basic functionality. This site is contains an admin page only accessible to one user, 'Dakota States'. The admin page use used to dynamically add Projects as they are created. Since this is a minimalist portfolio sight, only an about me page, access to the portfolio, and contact functionality is available.

The Contact functionality works using the Ruby on Rails built in Action Mailer and only sends the user a message when someone fills out the contact form.

The site also utilizes Isotope to help filter the projects results. Ruby on Rails is powerful but it does have it's limitations. One of the limitations happens to be with rendering and manipulating the DOM without refreshing the page. Rails does integrate well with Javascript and so in order to get a seamless filtering system without refreshing the page, Isotope JS was used.  Information on using Isotope: https://isotope.metafizzy.co/.

Javascript was also utilized within the admin page to add and remove Categories instantly. Most Ruby Developers are familiar with the sometimes frustrating nested forms, especially within a has_many association. The simplest way to add multiple attributes within a form is to do something like "3.times { project.categories.build }". This will create three renderings of a nested form but sometimes you might not need more than three. And so Javascript comes in handy to help manipulate the DOM into creating a new partial every time 'create category' is clicked.

The Admin page uses Devise to successfully establish a reliable user Authentication system. For more information on Devise visit: https://github.com/heartcombo/devise

Much of the stylings utilizes Bootstrap and the basic template for this portfolio can be found: https://startbootstrap.com/theme/freelancer.  

Things you may want to cover:

* Ruby version

The ruby version used is 2.6.1p33.

* System dependencies

The dependencies include Devise for User Authentication and Figaro for Action Mailer credentials.

To run the Dependencies simply type 'bundle install'.

* Configuration

If you are using Action Mailer you will need to make a few adjustments within your configuration environments.  

action_mailer.delivery_method, config.action_mailer.smtp_settings, action_mailer.perform_deliveries, and action_mailer.raise_delivery_errors will need to be set.

* Database creation

This project uses a PostgreSQL database. With all PostreSQL databases you will need to run 'rails db:create' before your initial migration as rails will not be aware of the existence of a database.

Once you have a database created you will simply run 'rails db:migrate' to create the schema.  

* Devise Installation
If you are using Devise you will need to do a few additional steps. Just run 'rails g devise:install' and follow the instructions as prompted.

Devise is a magnificent gem which makes the lives of Ruby developers much easier.  

* Deployment instructions

If you are wanting test out the Portfolio Website:

1) Fork the repo: https://github.com/dakotastates/rails-portfolio

2) Run 'bundle install' in your terminal.

3) Run 'rails db:create'.

4) Run 'rails db:migrate'.

5) Run 'rails devise:install' and follow the directions as prompted.

6) Type 'rails s' to start your server.

7) Go to localhost:3000 in your browser and everything should be up and running.
