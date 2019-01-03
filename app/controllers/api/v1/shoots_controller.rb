class Api::V1::ShootsController < ApplicationController

  
    before_action :find_shoot, only: [:update, :show]
    def index
      @shoots = Shoot.all
      render json: @shoots, include: :models
    end
    
    def show
        render json: @shoot, include: :models
    end

    def create
        @shoot = Shoot.new(shoot_params)
       
        if @shoot.save
          params['model_ids'].each do |m|
            @shoot.models << Model.find(m)
          end
            render json: @shoot, include: :models
        else
            render json: {error: 'Unable to add shoot.'}, status: 400
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
      params.require(:shoot).permit(
      :job_id, 
      :date, 
      :time,
      :location,
      :pay,
      model_ids:[]
      )
    end
  
    def find_shoot
      @shoot = Shoot.find(params[:id])
    end

end
