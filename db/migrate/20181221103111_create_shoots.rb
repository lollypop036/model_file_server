class CreateShoots < ActiveRecord::Migration[5.2]
  def change
    create_table :shoots do |t|
      t.string :job_id
      t.datetime :date
      t.datetime :time
      t.string :location
      t.integer :pay

      t.timestamps
    end
  end
end
