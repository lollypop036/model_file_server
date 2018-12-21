class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.datetime :dob
      t.string :sex
      t.string :location
      t.string :mobile
      t.string :image1
      t.string :image1
      t.string :image3
      t.integer :height
      t.integer :shoe
      t.integer :clothing
      t.integer :agent_id

      t.timestamps
    end
  end
end
