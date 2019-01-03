class Api::V1::AgentsController < ApplicationController

        # def signin
        #   @agent = Agent.find_by(username: params[:username])
        #   if @agent && @agent.authenticate(params[:password])
        #     render json: {username: @agent.username, id: @agent.id}
        #   else
        #     render json: {error: 'Invalid username/password combination.'}, status: 401
        #   end
        # end
        def index
            @agents = Agent.all
            render json: @agents
        end

        def show
            @agent = Agent.find(params[:id])
            render json: @agent
        end


        # def create
        #     @agent = Agent.new(agent_params)
        #     if @agent.save
        #         render json: @agent
        #     else
        #         render json: {error: 'Unable to create account'}, status: 401
        # end

        def update
            @agent = Agent.find_by(username: params[:username])
            @agent.update(agent_params)
            if @agent.save
                render json: @agent, status: :accepted
            else
                render json: { errors: @agent.errors.full_messages }, status: :unprocessible_entity
            end
            
        end
      
    #     def validate
    #       @agent = Agent.find_by(username: params[:username])
    #       if @agent
    #         render json: {username: @agent.username, id: @agent.id}
    #       else
    #         render json: {error: 'Invalid username.'}, status: 401
    #       end
    #     end
    #   end

      def agent_params
        params.require(:agent).permit(:name, :username, :password)
      end




end
