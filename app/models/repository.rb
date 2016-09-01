class Repository < OpenStruct
  attr_reader :services

  def self.services(user)
    @services ||= RepositoryService.new(user)
  end

  def self.all(user)
    repos_hashes = services(user).get_repositories

    repos_hashes.map do |repo_hash|
      Repository.new(repo_hash)
    end
  end

  def self.starred_repos(user)
    respos_hashes = services(user).get_starred

    repos_hashes.map do |repo_hash|
      Repository.new(repo_hash)
    end
  end






end
