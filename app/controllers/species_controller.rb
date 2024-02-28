class SpeciesController < ApplicationController
  def index
    @species = Species.includes(:planet, :characters)

    @homeworlds = Set.new

    @species.each do |s|
      @homeworlds << s.planet.planet_name
    end

    if params[:query].present? || params[:homeworld].present?
      @species = @species.where(
        "species_name LIKE ? AND homeworld LIKE ?",
        "%#{params[:query]}%", "%#{params[:homeworld]}%")
    end

    @species = @species.page(params[:page]).per(10)
  end

  def show
    @specie = Species.find(params[:id])
  end
end
