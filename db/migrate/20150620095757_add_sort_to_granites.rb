class AddSortToGranites < ActiveRecord::Migration
  def change
  	  add_column :granites, :sort_by_color, :string
  end
end
