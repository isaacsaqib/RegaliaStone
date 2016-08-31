class AddMosaicIdToPictures < ActiveRecord::Migration
  def change
		add_column :pictures, :mosaic_id, :string
  end
end
