class Agent < ApplicationRecord
    has_secure_password
    has_many :models
    has_many :jobs
    
end
