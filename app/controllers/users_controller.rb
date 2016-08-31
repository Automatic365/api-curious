class UsersController < ApplicationController
  def new

  end

  def show
    @user = User.find_by(id: current_user.id)
  end

end
