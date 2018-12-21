class CreateModelShoots < ActiveRecord::Migration[5.2]
  def change
    create_table :model_shoots do |t|
      t.integer :model_id
      t.integer :shoot_id
      t.timestamps
    end
  end
end
