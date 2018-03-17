class EpisodesController < ApplicationController
	def new
		@season = Season.find(params[:season_id])
		@episode = @season.episodes.build
	end

	def edit
		@episode = Episode.find(params[:id])
	end

	def show
		@episode = Episode.find(params[:id])
	end

	def create
		@season = Season.find(params[:season_id])
		@episode = @season.episodes.build(episode_params)
		
		if @episode.save
			redirect_to @season.drama
		else
			render 'new'
		end
	end

	def update
		@episode = Episode.find(params[:id])
		
		if @episode.update(episode_params)
			redirect_to @episode.season.drama
		else	
			render 'edit'
		end
	end	
	
	def destroy
		@episode = Episode.find(params[:id])		
		belonged_drama = @episode.season.drama
		@episode.destroy
		
		redirect_to belonged_drama
	end

	private
		def episode_params
			params.require(:episode).permit(
				:episode_num, :filename, :date, :hour, :minute, :synopsis)
		end
end
