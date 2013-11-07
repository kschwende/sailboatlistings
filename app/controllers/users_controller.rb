class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sailboats = @user.sailboats
  end

  def index

  end
end