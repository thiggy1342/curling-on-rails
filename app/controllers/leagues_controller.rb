class LeaguesController < ApplicationController

	def index
		@leagues = League.all
	end

	def show
		@league = League.find(params[:id])
	end

	def new
		@league = League.new
	end

	def create
		@league = League.new(league_params)
		if @league.save
			@league.generate_games
			redirect_to @league
		else
			render 'new'
		end
	end

	def edit
		@league = League.find(params[:id])
	end

	def update
		@league = League.find(params[:id])
		if @league.update(league_params)
			redirect_to @league
		else
			render 'new'
		end
	end

	def destroy
		@league = League.find(params[:id])
		@league.destroy
		redirect_to leagues_path
	end

	private

	def league_params
		params.require(:league).permit(:length, :day_of_the_week, :sheets, :manager, :start_date, :end_date, :game_start_time)
	end
end
