class CocktailsController < ApplicationController
  def index
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
  end

  def create
  end
end
