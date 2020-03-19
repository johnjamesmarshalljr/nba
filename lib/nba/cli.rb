#CLI controller

class CLI

  def start
    self.welcome
    self.get_players_list
  end

  def welcome
    puts 'welcome to the player stats portal'
    sleep(2)
    puts 'please select a player'
  end

  def get_players_list
    # binding.pry
      API.get_players #calls API to get list of NBA teams
      self.display_players_list
  end

  def display_players_list
    API.all_players.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player}"
  end

end
