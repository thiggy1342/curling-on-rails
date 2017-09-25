class DashboardController < ApplicationController
  def index
    @leagues = League.all
    @upcoming_games = []
    @leagues.each do |league|
      @upcoming_games = @upcoming_games + get_upcoming_games(league)
    end
    @upcoming_games
  end

  private

  def get_upcoming_games(league)
    next_week = Time.now + 7
    upcoming_games = []
    league.games.all.each do |game|
      if game.start_date < next_week
        upcoming_games << game
      end
    end
    upcoming_games
  end
end
