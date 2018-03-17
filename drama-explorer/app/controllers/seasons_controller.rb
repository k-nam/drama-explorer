class SeasonsController < ApplicationController
	def new
		@drama = Drama.find(params[:drama_id])
		@season = @drama.seasons.build
	end
	
	def edit
		@season = Season.find(params[:id])
	end
	
	def create
		#render plain: params[:season].inspect	 

		@drama = Drama.find(params[:drama_id])
		@season = @drama.seasons.build(season_params)
		
		1.upto(season_params[:num_total_episode].to_i) do |num|
			episode_params = { episode_num: num, 
				filename: season_params[:url_prefix] + num.to_s.rjust(2, '0') + '.mp4' }
			episode = @season.episodes.build(episode_params)
		end

		if @season.save
			redirect_to @drama
		else
			render 'new'
		end

	end
	
	def update
		@season = Season.find(params[:id])
		
		if @season.update(season_params)
			redirect_to @season.drama
		else	
			render 'edit'
		end
	end
	
	def destroy
		@season = Season.find(params[:id])		
		belonged_drama = @season.drama
		@season.destroy
		
		redirect_to belonged_drama
	end
	
	private
		def season_params
			params.require(:season).permit(
				:season_num, :director, :actor,
				:start_date, :synopsis, :url_prefix, :num_total_episode)
		end
end
