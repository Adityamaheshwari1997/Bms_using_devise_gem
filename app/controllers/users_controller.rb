class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:user_id])
    @theater = Theater.find(params[:theater_id])
    @movie = Movie.find(params[:movie_id])
  end

  def update
    
    @user = User.find(params[:user_id])
    if @user.update(cus_params)
      flash[:notice] = "Booking Done!! Mr/Mrs #{@user.email}"
      redirect_to theaters_index_path
    end
  end

  def cus_params
    params.require(:user).permit(:theater_id,:movie_id)
  end
end
