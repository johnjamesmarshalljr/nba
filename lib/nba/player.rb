class Player
  @@all = []

  attr_accessor :firstName, :lastName, :personId, :teamId, :jersey, :pos, :heightFeet, :heightInches, :heightmeters, :weightPounds, :weightKilograms, :dateOfBirthUTC, :teams, :draft, :nbaDebutYear, :yearsPro, :collegeName, :lastAffiliation, :country

    def initialize(attributes)
      attrs_from_hash(attributes)
    end


    def attrs_from_hash(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
    end

    # def self.get_players
    #   API.get_players
    #   all
    #
    # end


end


# alex_abrines = Player.new()
