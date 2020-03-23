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
    puts 'Follow the prompts to select a player'
      sleep(1)
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
    puts "Select the first name of your favorite player."
      @input = gets.strip
      get_user_first_name(@input)
    # puts "Select the last name name of your favorite player."
    #   @input = gets.strip
    #   get_user_last_name(@input)
      end

  def get_user_first_name(firstName)
    pl = Player.find_by_name(firstName)
      #binding.pry
      pl.each do |pl|

        puts "Name: #{pl.firstName} #{pl.lastName}"
        puts "Years Pro: #{pl.yearsPro}"
        puts "Country: #{pl.country}"
        puts "First Year: #{pl.nbaDebutYear}"
        puts "Position: #{pl.pos}"
        puts "Jersey Number: #{pl.jersey}"
        puts "DOB: #{pl.dateOfBirthUTC}"
        puts "College: #{pl.collegeName}"


        end
  end
        # binding.pry
  # def get_user_last_name(lastName)
  #   pl = Player.find_by_last_name(lastName)
  #           pl.each do |pl|
  #               puts "Name: #{pl.firstName} #{pl.lastName}"
  #               puts "Years Pro: #{pl.yearsPro}"
  #               puts "Country: #{pl.country}"
  #               puts "First Year: #{pl.nbaDebutYear}"
  #               puts "Position: #{pl.pos}"
  #               puts "Jersey Number: #{pl.jersey}"
  #               puts "DOB: #{pl.dateOfBirthUTC}"
  #               puts "College: #{pl.collegeName}"
  #     # puts pl.pos
  #   end
  # end




  #   @input ==
  #   if input.to_i > 0
  #     put @input[input.to_i-1]
  #   case input
  #   when "num"
  #     puts "More info on player 1"
  #   # @input.each.with_index(1)
  # end
  #
  # def goodbye
  #   puts "awesome thanks!"
  # end

  # def validate(input)
  #    player = Player.find_by_id(input)
  #  end

  #  def show_player_info
  #    @input = Player
  #  end


  #   def get_input
  #   input = gets.chomp
  #   num = input
  #   #binding.pry
  #   Player.all.each {|player| puts player.find_index('num')}
  # # def get user inpute
  # #   player.all
  #   end

  #Player.attrs_from_hash()
end
