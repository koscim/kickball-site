require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>" + "<h2><a href='/teams'>Teams</a></h2>" + "<h2><a href='/positions'>Positions</a></h2>"
end
get "/teams" do
  @team_data = TeamData::ROLL_CALL
  @teams = Team.all
  erb :teams
end
get "/teams/:team_details" do
  @team_name = params[:team_details]
  @team = Team.new(@team_name)
  @players = @team.players
  erb :team_details
end
get "/positions" do
  @positions = TeamData::ROLL_CALL.values[0].keys
  erb :positions
end
get "/positions/:position_details" do
  @position_name = params[:position_details]
  @players = Player.all
  @players_in_position = []
  @players.each do |player|
    if player.position.to_s == @position_name
      @players_in_position << player
    end
  end
  erb :position_details
end
