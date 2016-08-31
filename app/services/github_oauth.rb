class Githubauth
  attr_reader :connection
  def initialize
    @connection = Faraday.new("https://github.com")
  end

  def get_authorization
    connection.get('/login/oauth/authorize?client_id=9e5734a7111309ca42d8')
  end

end
  require "pry"; binding.pry
Githubauth.new
