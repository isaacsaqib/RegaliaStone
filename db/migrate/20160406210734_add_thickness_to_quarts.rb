class AddThicknessToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :thickness, :string
  end
end
