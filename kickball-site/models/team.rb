require_relative "./team_data"
require_relative "./player"

class Team
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def self.all
    teams_array = []
    TeamData::ROLL_CALL.each do |team, roster|
      teams_array << Team.new(team)
    end
    teams_array
  end

  def players
    team_players = []
    all_players = Player.all
    all_players.each do |player|
      if player.team_name == :"#{@name}"
        team_players << player
      end
    end
    team_players
  end

end
