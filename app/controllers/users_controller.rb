class UsersController < ApplicationController
  def new

  end

  def show
    @dashboard = Dashboard.new(current_user)
  end

end
