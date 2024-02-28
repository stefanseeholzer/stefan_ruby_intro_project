class PlanetsController < ApplicationController
  def index
    @planets = Planet.all.page(params[:page]).per(10)
  end

  def show
    @planet = Planet.find(params[:id])
  end
end
