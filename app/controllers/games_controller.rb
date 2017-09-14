class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def create
    @league = League.find(params[:id])
    @game = @league.games.create(game_params)

    redirect_to game_path(@game)
  end

  private
  def game_params
    params.require(:game).permit(:team_1, :team_2, :team_1_score, :team_2_score,
                                 :number_of_ends, :start_date, :start_time, :sheet)
  end
end
