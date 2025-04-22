class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ template: "actor_templates/index" })
  end

  def show
    @the_actor = Actor.find(params.fetch("the_id"))
    @characters = Character.where({ actor_id: @the_actor.id })
    render({ template: "actor_templates/show" })
  end
end
