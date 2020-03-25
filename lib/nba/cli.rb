#CLI controller

class CLI

  def start

    self.welcome
    self.get_players_list
    #  self.get_user_input
    # self.goodbye
    # self.validate(@input)
  end

  def welcome
    puts 'Welcome to the NBA player info portal'
      sleep(2)
    puts 'Select a player by entering a name from the list'
      sleep(2)
  end

  def get_players_list
    # binding.pry
      API.get_players
      self.display_players_list
  end

   def self.all
     @@all
   end

  def display_players_list
    Player.all.each.with_index(1) do |player, idx|
      puts "#{idx}. #{player.firstName} #{player.lastName}"
      end
    puts "Select the name of your favorite player."
      @input = gets.strip

      get_user_first_name(@input)

  end

  def get_user_first_name(firstName)
    pl = Player.find_by_name(firstName)

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

        end
  end


end
