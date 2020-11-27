class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    
    # DOSE pov
    @dose.cocktail = @cocktail
  end

  def create
    @dose = Dose.new(dose_params)
    cocktail = Cocktail.find(params[:cocktail_id])

    @dose.cocktail = cocktail

    if @dose.save! # true or false
      redirect_to cocktail_path(cocktail)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
