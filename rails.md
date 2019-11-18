# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  Model - business side of things. similar to the schema? defining available information to users vs available information to backend?
  View - user/browser side. what the user sees. handled by erb.html files in view folder in rails.
  Controller - backend, processes user input and returns requested info. in rails, controller file contains the methods to perform CRUD actions / HTTP verbs.

  Researched answer:
  Model - shape of the data and business logic, maintains the data
  View - user interface, displays data using model to user and allows them to modify data
  Controller - handles user requests, raises appropriate URL request, then renders view with model data as a response



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the _Model_routes_ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ___statics_controller___ in the file ___statics_controller.rb__
  ```
  class ___StaticController____ < ApplicationController
    def __about___
      render __about.html.erb____
    end
  end
  ```

  Step 3: Create the View in the file ____about.html.erb____
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
pulls list of users from database

/users/1      method="GET"     # :controller => 'users', :action => 'show'
shows info of user 1

/users/new    method="GET"     # :controller => 'users', :action => 'new'
shows input like form for user to add to database

/users/       method="POST"    # :controller => 'users', :action => 'create'
adds user input into database

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
input for user to update user 1 info

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
modifies user 1 info

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
deletes user 1



3b. Which of the above routes must always be passed params and why?
users/1. The url extension identifies what specific user to perform CRUD actions on.


4. What is the public folder used for in Rails?

  Your answer:
  I think to store any accessible data to users. Information not meant to be seen would be stored elsewhere.

  Researched answer:
  Precompiled Rails files meant to be served as static files by the application.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
Rails.application.routes.draw do
  get '/guess' => 'main#game'
end



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:
  action allows you to POST the form entry.

  Researched answer:
  Designates where to submit the form data.



7. Name two rails generator commands and what files they create:

  Your answer:
  rails g migration '' - creates migration file that makes a single change to a table
  rails new App -d postgresql -T - creates rails app

  Researched answer:
  rails g resource App column1:datatype column2:datatype etc - generates all necessary resources (routes, views, etc) for rails application
  rails g controller main - creates main controller for rails app


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Out of public, private, and protected methods, only public methods can be actions in controllers.

2. Standard practice is to place CRUD actions in the following order: index, show, new, edit, create, update, destroy.

3. rails-ujs JavaScript file comes with Rails and contains useful tools such as a popup confirmation box when deleting items.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:
  Temporary data stored in your browser.

  Researched answer:
  Both are used to store information, but cookies are stored only on the client side, while sessions are stored on both client side and server side.
