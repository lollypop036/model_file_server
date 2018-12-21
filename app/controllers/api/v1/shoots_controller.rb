class Api::V1::ShootsController < ApplicationController

  
    before_action :find_shoot, only: [:update, :show]
    def index
      @shoots = Shoot.all
      render json: @shoots
    
    def show
        render json: @shoot
    end

    def create
        @shoot = Shoot.new(shoot_params)
        if @shoot.save
            render json: @shoot
        else
            render json: {error: 'Unable to add story.'}, status: 400
        end
    end


    def update
      @shoot.update(shoot_params)
      if @shoot.save
        render json: @shoot, status: :accepted
      else
        render json: { errors: @shoot.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    private
  
    def shoot_params
      params.require(:shoot).permit([])
    end
  
    def find_job
      @shoot = Shoot.find(params[:id])
    end

end
