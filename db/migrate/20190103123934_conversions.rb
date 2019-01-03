class Conversions < ActiveRecord::Migration[5.2]
  def change
    change_column :shoots, :job_id, 'integer USING CAST(job_id AS integer)'
    change_column :castings, :job_id, 'integer USING CAST(job_id AS integer)'
  end
end
