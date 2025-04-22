class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render({ template: "movie_templates/index" })
  end

  def show
    @the_movie = Movie.find(params.fetch("the_id"))
    render({ template: "movie_templates/show" })
  end
end
