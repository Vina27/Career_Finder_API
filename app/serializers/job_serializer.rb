class JobSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :description, :user_id, :category_id, :list_id 
  has_many :users, through: :list 
  belongs_to :user 
  belongs_to :category 
  belongs_to :list 
end

# Ask about this 
