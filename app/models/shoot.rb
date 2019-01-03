class Shoot < ApplicationRecord
    belongs_to :job
    has_many :model_shoots
    has_many :models, through: :model_shoots
    
end
