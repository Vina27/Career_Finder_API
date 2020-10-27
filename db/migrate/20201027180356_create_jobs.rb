class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :description
      t.integer :user_id
      t.integer :category_id
      t.integer :list_id

      t.timestamps
    end
  end
end
