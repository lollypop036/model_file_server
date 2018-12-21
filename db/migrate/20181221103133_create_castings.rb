class CreateCastings < ActiveRecord::Migration[5.2]
  def change
    create_table :castings do |t|
      t.string :job_id
      t.datetime :date
      t.datetime :time
      t.string :location
      t.string :details

      t.timestamps
    end
  end
end
