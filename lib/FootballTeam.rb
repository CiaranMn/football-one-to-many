class FootballTeam

  DIVISIONS = ["Premiership", "First Division", "Second Division", "Third Division"]

  attr_reader :team_name

  def initialize(team_name, division)
    @team_name = team_name
    if DIVISIONS.include?(division)
      @division_index = DIVISIONS.find_index { |possible_division| possible_division == division}
    else
      puts "You did not provide a valid division - please try again ( Premiership | First Division | Second Division | Third Division )"
    end
  end

  def new_player(name, position)
    player = Player.new(name, position)
    player.team = self
    puts "#{self.team_name} signed promising youngster #{name}!"
  end

  def division
    DIVISIONS[@division_index]
  end

  def sign_player(name)
    player = Player.all.find { |player| player.name == name }
    puts "#{self.team_name} signed #{name} away from #{player.team.team_name}!"
    player.team = self
  end

  def players
    Player.all.select { |player| player.team == self }
  end

  def valid_division_index?(index)
    index >= 0 && index < DIVISIONS.size
  end

  def promote
   if valid_division_index?(@division_index - 1)
      @division_index -= 1
      puts "#{self.team_name} was promoted to the #{self.division}!"
    else
      puts "They can't go any higher!"
    end
  end

  def demote
    if valid_division_index?(@division_index + 1)
      @division_index += 1
      puts "#{self.team_name} was demoted to the #{self.division}!"
    else
      puts "They can't go any lower!"
    end
  end

end
