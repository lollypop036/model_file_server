class Shoot < ApplicationRecord
    belongs_to :job
    has_many :model_castings
    has_many :models, through :model_castings
end
