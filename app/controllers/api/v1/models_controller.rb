class Api::V1::ModelsController < ApplicationController


    before_action :find_model, only: [:update, :show, :destroy]
    def index
      @models = Model.all
      render json: @models
    end
    
    def show
        render json: @model
    end

    def create
        @model = model.new(models_params)
        if @model.save
            render json: @model
        else
            render json: {error: 'Unable to add story.'}, status: 400
        end
    end


    def update
      @model.update(model_params)
      if @model.save
        render json: @model, status: :accepted
      else
        render json: { errors: @model.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
        @model.destroy
        @models = Models.all
        render json: @models
    end
  
    private
  
    def model_params
      params.require(:model).permit(:name, :dob, :sex, :location, :mobile, :image1, :image2, :image3, :height, :shoe, :clothing)

    end
  
    def find_model
      @model = Model.find(params[:id])
    end
end
