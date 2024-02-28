class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
    @planets = @planets.where("planet_name LIKE ?", "%#{params[:query]}%") if params[:query].present?
    @planets = @planets.page(params[:page]).per(10)
  end

  def show
    @planet = Planet.find(params[:id])
  end
end
