class CreateSyodans < ActiveRecord::Migration[5.0]
  def change
    create_table :syodans do |t|
      t.integer :stauts_id
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
