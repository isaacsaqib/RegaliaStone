class AddSoldbyToMosaics < ActiveRecord::Migration
  def change
  	add_column :mosaics, :soldby, :string
  end
end
