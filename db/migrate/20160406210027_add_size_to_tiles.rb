class AddSizeToTiles < ActiveRecord::Migration
  def change
  	add_column :tiles, :size, :string
  end
end
