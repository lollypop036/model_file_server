class AgentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :models, :jobs
  has_many :models
  has_many :jobs

  class ModelSerializer <  ActiveModel::Serializer
    attributes :id, :name, :sex, :dob, :agent, :castings, :shoots, :location, :mobile, :image1, :image2, :image3, :height, :shoe, :clothing
    belongs_to :agent
    has_many :castings
    has_many :shoots
  end


  class JobSerializer < ActiveModel::Serializer
    attributes :id, :brand, :description, :agent_id, :shoot, :casting
    belongs_to :agent
    has_one :shoot
    has_one :casting
   
    
  end

    class CastingSerializer < ActiveModel::Serializer
      attributes :id, :job_id, :job, :date, :time, :models, :location, :details
      belongs_to :job
      has_many :models
      has_many :model_castings
      has_many :models, through: :model_castings
    end

    class ShootSerializer < ActiveModel::Serializer
      attributes :id, :job_id, :job, :date, :time, :models, :location, :pay
      belongs_to :job
      has_many :models
      has_many :model_shoots
      has_many :models, through: :model_shoots
    end

  



end




