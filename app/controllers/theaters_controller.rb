class TheatersController < ApplicationController
  def index
    @theaters = Theater.show_all_theater
  end

  def show
    @theater = Theater.find(params[:id])
  end
end
