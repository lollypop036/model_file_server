class Agent < ApplicationRecord
    # has_secure_password
    has_many :models
    has_many :jobs
    
    def get_jobs
        Job.all.where(agent_id == self.id)
    end


   
end

