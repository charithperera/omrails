class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    item = Food.find(params[:id])
    item.liked_by current_user
    redirect_to foods_path, notice: "You successfully voted for a food"
  end

  def destroy
    item = Food.find(params[:id])
    item.unliked_by current_user
    redirect_to foods_path, notice: "You successfully unvoted for a food"
  end
end
