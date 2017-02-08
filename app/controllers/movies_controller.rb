class MoviesController < ApplicationController

  def index

    @list_of_movies = Movie.all

    render("/movies/index.html.erb")
  end


  def show

    @movie = Movie.find(params[:id])

    render("/movies/show.html.erb")

  end


  def destroy

    movie = Movie.destroy(params[:id])

    redirect_to("/movies")

  end

  def new_form

    render("/movies/new_form.html.erb")

  end


  def create_row

    movie = Movie.new

    movie.title = params[:the_title] # NAME in form action goes to params
    movie.year = params[:the_year]
    movie.duration = params[:the_duration]
    movie.description = params[:the_description]
    movie.image_url = params[:the_source]

    movie.save

    redirect_to("/movies")
  end

  def edit_form
    @movie = Movie.find(params[:id])
    render("/movies/edit_form.html.erb")
  end

  def update_row
    movie = Movie.find(params[:id])

    movie.title = params[:the_title]
    movie.year = params[:the_year]
    movie.duration = params[:the_duration]
    movie.description = params[:the_description]
    movie.image_url = params[:the_source]

    movie.save

    redirect_to("/movies")
  end
end
