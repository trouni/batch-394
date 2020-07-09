class MoviesController < ApplicationController
  def index
    if params[:query].present?
      # query = <<-SQL
      # title @@ :query
      # OR syllabus @@ :query
      # OR directors.first_name @@ :query
      # OR directors.last_name @@ :query
      # SQL
      # @movies = Movie.joins(:director).where(query, query: "%#{params[:query]}%")
      @movies = Movie.search_by_title_and_syllabus(params[:query])
      # @movies = PgSearch.multisearch(params[:query]).map { |result| result.searchable }
    else
      @movies = Movie.all
    end
  end
end