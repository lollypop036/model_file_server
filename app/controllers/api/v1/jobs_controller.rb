class Api::V1::JobsController < ApplicationController

    before_action :find_job, only: [:update, :show]
    def index
      @jobs = Job.all
      render json: @jobs
    
    def show
        render json: @job
    end

    def create
        @job = Job.new(Job_params)
        if @job.save
            render json: @job
        else
            render json: {error: 'Unable to add story.'}, status: 400
        end
    end


    def update
      @job.update(job_params)
      if @job.save
        render json: @job, status: :accepted
      else
        render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    private
  
    def job_params
      params.require(:job).permit([])
    end
  
    def find_job
      @job = Job.find(params[:id])
    end
end
