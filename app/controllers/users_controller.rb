class UsersController < ApplicationController
  def new

  end

  def show
    @repositories = Repository.new(current_user)
  end

end
