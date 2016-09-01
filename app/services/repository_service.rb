class RepositoryService
  attr_reader :connection, :user

  def initialize(user)
    @user = user
    @connection        = Faraday.new('https://api.github.com')
    @connection.headers['Authorization'] = "token #{user.credentials}"
  end

  def parse(response)
    JSON.parse(response, object_class: OpenStruct)
  end

  def get_repositories
    response = connection.get("/user/repos")
    parse(response.body)
  end

  def get_starred
    response = connection.get("/user/starred")
    parse(response.body)
  end

  def get_followers
    response = connection.get("/user/followers")
    parse(response.body)
  end

  def get_following
    response = connection.get("/user/following")
    parse(response.body)
  end

  def get_feed
    response = connection.get('/feeds')
    parse(response.body)
  end

  def get_events(username)
    response = connection.get("/users/:username/events")
    parse(response.body)
  end

  # def get_commits(repo)
  #   response = connection.get("/repos/:#{user.nickname}/:#{repo}/commits")
  #   parse(response.body)
  # end


  # def get_repository
  #   # response = connection.get("/repos/#{current_user.nickname}/#{id}")
  #   # response = connection.get("/repos/:owner/:repo")
  #   parse(response.body)
  # end


end

# require "pry"; binding.pry
# GithubService.new
