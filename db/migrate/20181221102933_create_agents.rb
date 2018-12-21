class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      

      t.timestamps
    end
  end
end
