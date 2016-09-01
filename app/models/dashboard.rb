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


  def self.feed(user)
    repos_hashes = services(user).get_feed

    repos_hashes.map do |repo_hash|
      Repository.new(repo_hash)
    end
  end

  def self.events(user)
    repos_hashes = services(user).get_events

    repos_hashes.map do |repo_hash|
      Repository.new(repo_hash)
    end
  end

end
