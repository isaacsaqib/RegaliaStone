class AddCollectionToQuarts < ActiveRecord::Migration
  def change
  	  	  add_column :quarts, :collection, :string

  end
end
