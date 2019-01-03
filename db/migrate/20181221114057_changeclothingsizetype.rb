class Changeclothingsizetype < ActiveRecord::Migration[5.2]
  def change
    change_column :models, :clothing, :string
    add_column :models, :image2, :string
  end
end
