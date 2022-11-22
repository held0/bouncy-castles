class CastlesController < ApplicationController
  def index
    @castles = Castle.all
  end

  def show
  end

  def new
    @castle = Castle.new
  end

  def create
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :location, :description, :price, photos: [])
  end
end
