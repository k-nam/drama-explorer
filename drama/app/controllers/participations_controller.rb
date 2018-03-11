class ParticipationsController < ApplicationController
    def index
        @participations = Participation.all
    end

    def new
        @drama = Drama.find(params[:drama_id])
        @participation = Participation.new
    end

    def create
         #render plain: params[:participation].inspect

		@participation = Participation.new(participation_params)
		
		if @participation.save
			redirect_to drama_path(@participation.drama)
		else
			render 'new'
        end

    end   

    def destroy        
        @participation = Participation.find(params[:id])
        drama_id = @participation.drama_id
		@participation.destroy
		
		redirect_to drama_path(drama_id)
    end
    
    private
        def participation_params
            params.require(:participation).permit(
                :drama_id, :actor_id)
        end
end
