class GithubService
  attr_reader :connection

  def initialize
    @connection        = Faraday.new('https://api.github.com')
    @connection.header['Authorization'] = "token #{ENV['1f67bbcc786fc98ffac7491c52134d0bb7fca39f']}"
  end

  def parse(response)
    JSON.parse(response, object_class: OpenStruct)
  end

  def get_repos
    response = connection.get("/orgs/#{current_user.nickname}/repos")
    parse(response.body)
  end

  def get_repo(id)
    response = connection.get("/repos/#{current_user.nickname}/#{id}")
    parse(response.body)
  end


end
