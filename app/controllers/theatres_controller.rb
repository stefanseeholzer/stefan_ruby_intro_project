class TheatresController < ApplicationController
  def index
    @theatres = Theatre.all.page(params[:page]).per(10)
  end

  def show
    @theatre = Theatre.find(params[:id])
  end
end
