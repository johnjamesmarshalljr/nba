class API
  def self.get_teams
      response = HTTParty.get('http://data.nba.net/10s/prod/v1/2016/players.json')


      @@all_players = response['league']['standard']
      #binding.pry

  end
end
