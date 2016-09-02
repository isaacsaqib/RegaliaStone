class AddMaterialToMosaics < ActiveRecord::Migration
  def change
  	add_column :mosaics, :material, :string
  end
end
