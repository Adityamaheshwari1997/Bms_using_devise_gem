class ScreensController < ApplicationController

  def show
    @theater = Theater.find(params[:theater_id ])
    @screen = Screen.find(params[:id])
  end

end
