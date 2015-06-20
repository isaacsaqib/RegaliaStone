class AddSortToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :sort_by_color, :string
  end
end
