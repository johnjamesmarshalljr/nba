#CLI controller

class CLI

  def start
    self.welcome
    self.get_team_list
  end

  def welcome
    puts 'welcome to the player stats portal'
    sleep(2)
    puts 'please select a team'
  end

  def get_team_list
    # binding.pry
      API.get_teams #calls API to get list of NBA teams
  end

end
