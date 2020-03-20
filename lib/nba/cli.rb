#CLI controller

class CLI

  def start
    self.welcome
    self.get_players_list
  end

  def welcome
    puts 'welcome to the player stats portal'
    #sleep(2)
    puts 'please select a player'
  end

  def get_players_list
    # binding.pry
      API.get_players #calls API to get list of NBA teams

        self.parse_players
      self.display_players_list
  end

  def parse_players
      @@all = Player.all.each {|player| puts player.firstName}
#binding.pry
   end

   def self.all
     @@all
   end

  def display_players_list
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player}"
  end



end

end
