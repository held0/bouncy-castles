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
end
