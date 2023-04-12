class MoviesController < ApplicationController

  def index
    
  

    render({ template: "movies_templates/index.html.erb" })
  end
end
