require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end
  def self.all
    players_all = []
    team_data = TeamData::ROLL_CALL
    team_data.keys.each do |team_name|
      team = team_name
      team_data[team_name].keys.each do |position|
        name = team_data[team_name][position]
        new_player = Player.new(name, position, team)
        players_all << new_player
      end
    end
    players_all
  end
end
