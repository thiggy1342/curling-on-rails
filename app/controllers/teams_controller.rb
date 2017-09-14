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
    redirect_to league_teams_path
  end

  def edit
    @league = League.find(params[:league_id])
    @team = @league.teams.find(params[:id])
  end

  def update
    @league = League.find(params[:league_id])
    @team = @league.teams.update(team_params)
    redirect_to league_team_path(@team)
  end

  def destroy
    @league = League.find(params[:league_id])
    @league.teams.find(params[:id]).destroy
    redirect_to league_teams_path
  end

  private

  def team_params
    params.require(:team).permit(:league_id, :team_name, :lead, :second, :vice, :skip)
  end

end
