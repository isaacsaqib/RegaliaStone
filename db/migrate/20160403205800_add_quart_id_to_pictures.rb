class AddQuartIdToPictures < ActiveRecord::Migration
  def change
  		add_column :pictures, :quart_id, :string
  end
end
