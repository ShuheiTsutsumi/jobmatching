class CreateDestroys < ActiveRecord::Migration[5.0]
  def change
    create_table :destroys do |t|
      t.string :category

      t.timestamps
    end
  end
end
