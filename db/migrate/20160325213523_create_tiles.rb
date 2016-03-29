class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
    	t.string :name
    	t.string :description
    	t.string :collection
    	t.string :type
    	t.string :subsection
    	t.attachment :avatar

    end
  end
end
