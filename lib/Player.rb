class Player

  @@all = []

  attr_reader :name
  attr_accessor :position

  def initialize(name, position)
    @name = name
    @position = position
    @@all << self
  end

  def plays_in
    self.team.division
  end

  def team
    self.team.team_name
  end

  def self.all
    @@all
  end

end
