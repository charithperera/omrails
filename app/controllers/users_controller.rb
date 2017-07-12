class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @foods = @user.nil? ? [] : @user.foods
  end
end
