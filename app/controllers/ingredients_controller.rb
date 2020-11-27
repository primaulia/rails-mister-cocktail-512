# THIS IS FOR DEMO ONLY
class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
end
