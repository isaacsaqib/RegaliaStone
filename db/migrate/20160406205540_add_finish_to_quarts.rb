class AddFinishToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :finish, :string
  end
end
