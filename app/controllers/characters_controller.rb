class CharactersController < ApplicationController
  def index
    @characters = Character.includes(:planet, :species).page(params[:page]).per(10)
  end

  def show
    @character = Character.find(params[:id])
  end
end