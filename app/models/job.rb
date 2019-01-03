class Job < ApplicationRecord
    belongs_to :agent
    has_one :casting
    has_one :shoot
    validates :brand, presence: true, length: { minimum: 2 }
    validates :description, presence: true, length: { minimum: 2 }
end

