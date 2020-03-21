class Player

  @@all = []

  attr_accessor :int_id, :firstName, :lastName, :personId, :teamId, :jersey, :pos, :heightFeet, :heightInches, :heightMeters, :weightPounds, :weightKilograms, :dateOfBirthUTC, :teams, :draft, :nbaDebutYear, :yearsPro, :collegeName, :lastAffiliation, :country

    def initialize(attributes)
        attrs_from_hash(attributes)
        @@all << self
    end

  #   def set_int_id
  #   @int_id = @@all.length + 1
  # end


    def attrs_from_hash(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
    end

    def self.all
         @@all
    end

    def self.find_by_name(input)
        self.all.select do |firstName|
        firstName.firstName == input
          end
      end

    def self.find_by_last_name(input)
        self.all.select do |lastName|
          lastName.lastName == input
        end
    end
          # puts input.firstName == name
        # binding.pry



      # jj = Player.new(api)
      # puts jj.all


    # puts all.select{|s| s.int_id == input.to_i}




end
