class SpeciesController < ApplicationController
  def index
    @species = Species.all
    @species = Species.includes(:character).all
    @species = Species.includes(:planet).all
  end

  def show
    @specie = Species.find(params[:id])
  end
end
