class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @foods = @user.foods
  end
end
