class AddFinishToTiles < ActiveRecord::Migration
  def change
  	add_column :tiles, :finish, :string
  end
end
