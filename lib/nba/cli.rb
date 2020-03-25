#CLI controller

class CLI

  def start

    self.welcome
    self.get_players_list

  end

  def welcome
    puts 'Welcome to the NBA player info portal'
      sleep(2)
    puts 'Select a player by entering a name from the list'
      sleep(2)
  end

  def get_players_list
      API.get_players
      self.display_players_list
  end

  #  def self.all
  #    @@all
  #  end

  def display_players_list

    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.firstName} #{player.lastName}"
      end
      puts "Select the name of your favorite player."
      @input = gets.strip
      get_player_name(@input)
  end

  def get_player_name(name)
    pl = Player.find_by_name(name)
      if pl.empty?
        puts "Player does not exist"
        sleep(1)
        puts "Try again..."
        puts "Select the name of your favorite player."
        @input = gets.strip
        get_player_name(@input)
        #pl is an array
      else
      pl.each do |pl|

        puts "Name: #{pl.firstName} #{pl.lastName}"
        puts "Years Pro: #{pl.yearsPro}"
        puts "Country: #{pl.country}"
        puts "First Year: #{pl.nbaDebutYear}"
        puts "Position: #{pl.pos}"
        puts "Jersey Number: #{pl.jersey}"
        puts "DOB: #{pl.dateOfBirthUTC}"
        puts "College: #{pl.collegeName}"
        puts "Height: #{pl.heightFeet}\'#{pl.heightInches}\""
        puts "Weight: #{pl.weightPounds} lbs."
        puts "Drafted: #{pl.draft.values.last}"
        end


       end
  end



end
