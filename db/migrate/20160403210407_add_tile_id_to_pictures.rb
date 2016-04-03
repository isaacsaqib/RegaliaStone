class AddTileIdToPictures < ActiveRecord::Migration
  def change
  		add_column :pictures, :tile_id, :string
  end
end
