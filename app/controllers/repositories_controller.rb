class RepositoriesController < ApplicationController

  def index
    @repositories = Repository.all(current_user)
  end

end
