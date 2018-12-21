class CreateModelCastings < ActiveRecord::Migration[5.2]
  def change
    create_table :model_castings do |t|
      t.integer :model_id
      t.integer :casting_id
      t.timestamps
    end
  end
end
