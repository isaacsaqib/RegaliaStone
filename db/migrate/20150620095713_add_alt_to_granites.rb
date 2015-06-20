class AddAltToGranites < ActiveRecord::Migration
  def change
  	add_column :granites, :alt, :string
  end
end
