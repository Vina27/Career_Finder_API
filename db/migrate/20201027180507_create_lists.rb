class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :job_id
      t.integer :user_id

      t.timestamps
    end
  end
end
