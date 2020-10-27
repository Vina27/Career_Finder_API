class Job < ApplicationRecord
    has_many :users, through: :list 
    belongs_to :user 
    belongs_to :category 
    belongs_to :list 
end
