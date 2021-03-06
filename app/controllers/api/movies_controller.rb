class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index
    p "*" * 88
    p current_user
    p "*" * 88
    @movies = Movie.where(english: true)
    # @movies = Movie.all
    render "index.json.jb"
  end
  
  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
    )
    @movie.english = params[:english] || @movie.english

    if @movie.save 
      render "show.json.jb"
    else 
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    
    if @movie.save 
      render "show.json.jb"
    else 
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render "destroy.json.jb"    
  end
end
