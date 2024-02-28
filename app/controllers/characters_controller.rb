class CharactersController < ApplicationController
  def index
    @characters = Character.includes(:planet, :species)
    
    @homeworlds = Set.new
    @species = Set.new

    @characters.each do |c|
      @homeworlds << c.planet.planet_name
      @sn = c.species&.species_name
      if @sn
        @species << @sn
      end
    end
    @homeworlds = @homeworlds.sort
    @species = @species.sort

    if params[:query].present? || params[:homeworld].present? || params[:species].present?
      @characters = @characters.where(
        "character_name LIKE ? AND homeworld LIKE ? AND species LIKE ?",
        "%#{params[:query]}%", "%#{params[:homeworld]}%", "%#{params[:species]}%")
    end

    @characters = @characters.page(params[:page]).per(10)
  end

  def show
    @character = Character.find(params[:id])
  end
end