class JobSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :description, :user_id, :category_id 
  has_many :users, through: :lists

  belongs_to :category 

end

# Ask about this 
