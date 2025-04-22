class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({ template: "director_templates/index" })
  end

  def show
    @the_director = Director.find(params.fetch("the_id"))
    @filmography = Movie.where({ director_id: @the_director.id })
    render({ template: "director_templates/show" })
  end

  def eldest
    @the_eldest_director = Director.where.not({ dob: nil }).order({ dob: :asc }).first
    render({ template: "director_templates/eldest" })
  end

  def youngest
    @the_youngest_director = Director.where.not({ dob: nil }).order({ dob: :desc }).first
    render({ template: "director_templates/youngest" })
  end
end
