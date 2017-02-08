class ActorsController < ApplicationController

  def index

    @list_of_actors = Actor.all

    render("/actors/index.html.erb")
  end


  def show

    @actor = Actor.find(params[:id])

    render("/actors/show.html.erb")

  end


  def destroy

    actor = Actor.destroy(params[:id])

    redirect_to("/actors")

  end

  def new_form

    render("/actors/new_form.html.erb")

  end


  def create_row

    actor = Actor.new

    actor.name = params[:the_name] # NAME in form action goes to params
    actor.bio = params[:the_bio]
    actor.dob = params[:the_dob]
    actor.image_url = params[:the_source]

    actor.save

    redirect_to("/actors")
  end

  def edit_form
    @actor = Actor.find(params[:id])
    render("/actors/edit_form.html.erb")
  end

  def update_row
    actor = Actor.find(params[:id])

    actor.name = params[:the_name]
    actor.bio = params[:the_bio]
    actor.dob = params[:the_dob]
    actor.image_url = params[:the_source]

    actor.save

    redirect_to("/actors")
  end
end
