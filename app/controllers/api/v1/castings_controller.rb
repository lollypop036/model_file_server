class Api::V1::CastingsController < ApplicationController

    before_action :find_casting, only: [:update, :show]
    def index
      @castings = Casting.all
      render json: @castings
    end
    
    def show
        render json: @casting
    end

    def create
        @casting = Casting.new(casting_params)
        if @casting.save
            render json: @casting
        else
            render json: {error: 'Unable to add story.'}, status: 400
        end
    end


    def update
      @casting.update(note_params)
      if @casting.save
        render json: @casting, status: :accepted
      else
        render json: { errors: @casting.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    private
  
    def casting_params
      params.require(:casting).permit([])
    end
  
    def find_casting
      @casting = Casting.find(params[:id])
    end

end
