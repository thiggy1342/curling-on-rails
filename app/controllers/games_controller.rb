class GamesController < ApplicationController
  def index
    @league = League.find(params[:league_id])
    @games = @league.games.all
  end

  def show
    @league = League.find(params[:league_id])
    @game = @league.games.find(params[:id])
  end
  
  def new
    @league = League.find(params[:league_id])
  end

  def create
    @league = League.find(params[:league_id])
    @game = @league.games.create(game_params)
    redirect_to league_game_path(@league, @game)
  end

  def edit
    @league = League.find(params[:league_id])
    @game = @league.games.find(params[:id])
  end

  def update
    @league = League.find(params[:league_id])
    @game = @league.games.update(game_params)
    redirect_to league_game_path(@league, @game)
  end

  def destroy
    @league = League.find(params[:league_id])
    @game = @league.games.find(params[:id])
    @game.destroy
    redirect_to league_games_path(@league)
  end

  private
  def game_params
    params.require(:game).permit(:team_1, :team_2, :team_1_score, :team_2_score,
                                 :number_of_ends, :start_date, :start_time, :sheet)
  end
end
