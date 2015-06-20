class AddAltToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :alt, :string
  end
end
