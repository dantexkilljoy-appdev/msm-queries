class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ template: "actors_templates/index.html.erb"})
  end

  def details

    @actor_id = params.fetch("actor_id")

    @actor_bio = Actor.where({ id: @actor_id }).at(0)

    @actor_char = Character.where({ actor_id: @actor_id })

    @information = @actor_char.each do |actee| end

    render({ template: "actors_templates/bio.html.erb"})
  end
end
