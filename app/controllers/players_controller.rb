class PlayersController < ApplicationController
  def new
    @player = Player.new
    @team = Team.find(params[:team_id])
    @league = League.find(params[:league_id])
  end

  def create
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:team_id])
    @player = @team.players.create(player_params)
    redirect_to league_team_path(@league, @team)
  end

  def show
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:team_id])
    @player = @team.players.find(params[:id])
  end

  def edit
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:team_id])
    @player = @team.players.find(params[:id])
  end

  def update
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:team_id])
    @player = @team.players.update(player_params)
    redirect_to league_team_player_path(@league, @team, @player)
  end

  def destroy
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:team_id])
    @team.players.destroy(params[:id])
    redirect_to league_team_path(@league, @team)
  end

  private
  def player_params
    params.require(:player).permit(:league_id, :team_id, :first_name, :last_name, :position, :member)
  end
end
