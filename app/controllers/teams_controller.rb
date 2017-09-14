class TeamsController < ApplicationController
  def index
    @league = League.find(params[:league_id])
    @teams = @league.teams.all
  end

  def show
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:id])
  end

  def new
    @league = League.find(params[:league_id])
  end

  def create
    @league = League.find(params[:league_id])
    @team = @league.teams.create(team_params)
    redirect_to league_team_path(@league, @team)
  end

  private

  def team_params
    params.require(:team).permit(:team_name, :lead, :second, :vice, :skip)
  end
end
