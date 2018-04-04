class DramasController < ApplicationController
	def index
		@dramas = Drama.all
	end
	
	def new
		@drama = Drama.new
	end
	
	def edit
		@drama = Drama.find(params[:id])
	end
	
	def show
		@drama = Drama.find(params[:id])
	end
	
	def create
		#render plain: params[:drama].inspect
		@drama = Drama.new(drama_params)
		
		if @drama.save
			redirect_to dramas_path
		else
			render 'new'
		end
	end
	
	def update
		@drama = Drama.find(params[:id])
		
		if @drama.update(drama_params)
			redirect_to dramas_path
		else	
			render 'edit'
		end
	end
	
	def destroy
		@drama = Drama.find(params[:id])
		@drama.destroy
		
		redirect_to dramas_path
	end
	
	private
		def drama_params
			params.require(:drama).permit(
				:title, :eng_title, :img_url, :type, :genre, :director, :actor,
				:start_date, :synopsis)
		end
end
