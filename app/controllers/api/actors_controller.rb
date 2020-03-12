class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end
  def show
    @actor = Actor.find_by(id: params[:id])
    render "show.json.jb"
  end
end
