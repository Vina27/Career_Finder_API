class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :my_lists
  has_many :lists 

  def my_lists
    self.object.jobs.map do |job| 
      job 
    end 
  end 

end
