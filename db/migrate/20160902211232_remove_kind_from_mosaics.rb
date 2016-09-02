class RemoveKindFromMosaics < ActiveRecord::Migration
  def change
  	remove_column :mosaics, :kind
  end
end
