class AddKindToMosaics < ActiveRecord::Migration
  def change
  	add_column :mosaics, :kind, :string
  end
end
