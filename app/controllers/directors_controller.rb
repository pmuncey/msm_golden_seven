class DirectorsController < ApplicationController

def index

  @list_of_directors = Director.all

  render("/directors/index.html.erb")
end


def show

  @director = Director.find(params[:id])

  render("/directors/show.html.erb")

end


def destroy

  director = Director.destroy(params[:id])

  redirect_to("/directors")

end

def new_form

  render("/directors/new_form.html.erb")

end


def create_row

  director = Director.new

  director.name = params[:the_name] # NAME in form action goes to params
  director.bio = params[:the_bio]
  director.dob = params[:the_dob]
  director.image_url = params[:the_source]

  director.save

  redirect_to("/directors")
end

def edit_form
  @director = Director.find(params[:id])
  render("/directors/edit_form.html.erb")
end

def update_row
  director = Director.find(params[:id])

  director.name = params[:the_name]
  director.bio = params[:the_bio]
  director.dob = params[:the_dob]
  director.image_url = params[:the_source]

  director.save

  redirect_to("/directors")
end

end

# <!-- director name:string bio:text dob:string image_url:string -->
