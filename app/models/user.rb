class User < ApplicationRecord
    has_many :lists, dependent: :destroy 
    has_many :jobs, through: :lists 
end
