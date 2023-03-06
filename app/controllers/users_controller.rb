
class UsersController < ApplicationController

  def index
  end

  def edit
    @user = User.find(params[:user_id])
    @movie = Movie.find(params[:movie_id])
  end

  def update
    @user = User.find(params[:user_id])
    if @user.ticketdate == nil || @user.ticketdate.to_date < DateTime.now.to_date
      if @user.update(cus_params)
        @user.update(ticketdate: DateTime.now)
        flash[:notice] = "Booking Done!! Mr/Mrs #{@user.email}"
        redirect_to theaters_index_path
      end
    else
    flash[:alert] = "your booking already done!! Mr/Mrs #{@user.email}"
    redirect_to theaters_index_path
    end
  end

  def cus_params
    params.require(:user).permit(:theater_id,:movie_id)
  end
end
