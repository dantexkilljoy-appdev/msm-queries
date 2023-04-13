class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ template: "directors_templates/index.html.erb" })
  end

  def wisest

    @oldest = Director.where.not({ :dob => nil }).order({ dob: :asc }).at(0)

    @oldest_name = @oldest.name

    @oldest_dob = @oldest.dob

    render({ template: "directors_templates/eldest.html.erb" })
  end

  def youngest

    @youngest = Director.order({ dob: :desc }).at(0)

    @youngest_name = @youngest.name

    @youngest_dob = @youngest.dob

    render({ template: "directors_templates/youngest.html.erb" })
  end

  def bio

    @direct_id = params.fetch("direct_id")
    
    @director_bio = Director.where({ id: @direct_id }).at(0)

    @director_movie = Movie.where({ director_id: @direct_id })

    render({ template: "directors_templates/bio.html.erb" })
  end
end
