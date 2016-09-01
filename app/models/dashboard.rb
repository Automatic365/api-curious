class Dashboard
  attr_reader :services, :user

  def initialize(user)
    @user = user
    @services = RepositoryService.new(user)
  end

  def all_repos
    services.get_repositories
  end

  def starred_repos
    services.get_starred
  end

  def followers
    services.get_followers
  end


  def following
    services.get_following
  end


  def feed(username)
    services.get_feed(username)
  end

  def events(username)
    services.get_events(username)
  end

end
