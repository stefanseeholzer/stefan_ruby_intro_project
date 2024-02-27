class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @characters = Character.includes(:planet).all
    @characters = Character.includes(:species).all
  end

  def show
    @character = Character.find(params[:id])
  end
end