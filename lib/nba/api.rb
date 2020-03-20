class API
  def self.get_players
      response = HTTParty.get('http://data.nba.net/10s/prod/v1/2016/players.json')
      @@all_players = response['league']['standard'].select {|hash| hash.keys.first == "firstName"}
      @@all_players.each {|hash| Player.new(hash)}
      #@@all_players.map {|hash| hash.values}
      #response['league']['standard'][0][:firstName.to_s] -- gets first name of player
      # ['league']['standard'][1]
           #binding.pry
  end
  def self.all_players
    @@all_players
  end
end
