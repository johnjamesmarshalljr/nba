class Player

  @@all = []

  attr_accessor :firstName, :lastName, :personId, :teamId, :jersey, :pos, :heightFeet, :heightInches, :heightMeters, :weightPounds, :weightKilograms, :dateOfBirthUTC, :teams, :draft, :nbaDebutYear, :yearsPro, :collegeName, :lastAffiliation, :country

    def initialize(attributes)
        attrs_from_hash(attributes)
        @@all << self
    end

    def attrs_from_hash(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
    end

    def self.all
      @@all
    end

    def self.find_by_name(input)
        self.all.select do |object|
        fullname = "#{object.firstName} #{object.lastName}"
        fullname.upcase == input.upcase
        end
    end

    def self.find_by_last_name(input)
        self.all.select do |lastName|
          lastName.lastName == input
        end
    end
end
