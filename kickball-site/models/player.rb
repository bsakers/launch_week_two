require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    players_array = []
    TeamData::ROLL_CALL.each do |team, roster|
      roster.each do |position, name|
        players_array << Player.new(name, position, team)
      end
    end
    players_array
  end

end
