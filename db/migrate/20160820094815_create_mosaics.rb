class CreateMosaics < ActiveRecord::Migration
  def change
    create_table :mosaics do |t|
		t.string   :name
	    t.string   :description
	    t.string   :collection
	    t.string   :subsection
	    t.string   :avatar_file_name
	    t.string   :avatar_content_type
	    t.integer  :avatar_file_size
	    t.datetime :avatar_updated_at
	    t.string   :token
	    t.string   :finish
	    t.string   :size
    end
  end
end
