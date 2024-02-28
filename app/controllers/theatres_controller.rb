class TheatresController < ApplicationController
  def index
    @theatres = Theatre.all
    @theatres = @theatres.where("name LIKE ?", "%#{params[:query]}%") if params[:query].present?
    @theatres = @theatres.page(params[:page]).per(10)
  end

  def show
    @theatre = Theatre.find(params[:id])
  end
end
