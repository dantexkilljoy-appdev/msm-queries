class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ template: "movies_templates/index.html.erb" })
  end

  def overview

    @movie_id = params.fetch("movie_id")

    @movie_bio = Movie.where({ id: @movie_id }).at(0)
    
    
    
    render({ template: "movies_templates/details.html.erb" })
  end
end
