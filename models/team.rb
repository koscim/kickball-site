require_relative "./team_data"

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    teams_all = []
    team_data = TeamData::ROLL_CALL
    team_data.keys.each do |team_name|
      new_team = Team.new(team_name)
      teams_all << new_team
    end
    teams_all
  end

  def players
    players_all = []
    team_data = TeamData::ROLL_CALL
    team_data.keys.each do |team_name|
      if @name == team_name.to_s
        team_data[team_name].keys.each do |position|
          name = team_data[team_name][position]
          new_player = Player.new(name, position, team_name)
          players_all << new_player
        end
      end
    end
    players_all
  end
end
