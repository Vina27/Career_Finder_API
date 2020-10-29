class Job < ApplicationRecord
    has_many :lists 
    has_many :users, through: :lists 
    belongs_to :user 
    belongs_to :category 
end
