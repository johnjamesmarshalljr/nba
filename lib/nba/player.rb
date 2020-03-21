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

    def self.find_by_name(name)
      self.all.each do |input|
        input.select do |attributes|
          puts attributes.firstName == name
        end


          # puts input.firstName == name
        # binding.pry
      end
      end

      # jj = Player.new(api)
      # puts jj.all


    # puts all.select{|s| s.int_id == input.to_i}




end
