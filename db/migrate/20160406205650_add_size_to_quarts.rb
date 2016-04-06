class AddSizeToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :size, :string
  end
end
