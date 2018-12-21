class AgentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :models, :jobs
  has_many :models
  has_many :jobs

  class ModelSerializer <  ActiveModel::Serializer
    attributes :id, :name, :sex, :dob, :location, :mobile, :image1, :image2, :image3, :height, :shoe, :clothing, :id
    belongs_to :agent
    has_many :castings
    has_many :shoots
  end


  class JobSerializer < ActiveModel::Serializer
    attributes :id, :brand, :description, :agent_id

    class CastingSerializer < ActiveModel::Serializer
      attributes :id, :job_id, :date, :time, :location, :details
      belongs_to :job
    end

    class ShootSerializer < ActiveModel::Serializer
      attributes :id, job_id, :date, :time, :location, :pay
      belongs_to :job
    end

  end



end




