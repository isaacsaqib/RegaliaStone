class AddTokenToTiles < ActiveRecord::Migration
  def change
  	add_column :tiles, :token, :string
  end
end
