class SpeciesController < ApplicationController
  def index
    @species = Species.includes(:planet, :characters).page(params[:page]).per(10)
  end

  def show
    @specie = Species.find(params[:id])
  end
end
