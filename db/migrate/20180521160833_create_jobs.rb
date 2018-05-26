class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :category_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
