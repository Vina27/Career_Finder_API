class RemoveUserListFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :user_id, :integer
    remove_column :jobs, :list_id, :integer
  end
end
