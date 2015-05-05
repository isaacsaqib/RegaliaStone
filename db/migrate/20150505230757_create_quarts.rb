class CreateQuarts < ActiveRecord::Migration
  def change
    create_table :quarts do |t|
    	t.string :name 
    	t.string :description 
    	t.timestamps
    end
  end
end
