class Model < ApplicationRecord
    belongs_to :agent
    has_many :model_castings
    has_many :model_shoots
    has_many :shoots, through :model_shoots
    has_many :castings, through :model_castings
end

