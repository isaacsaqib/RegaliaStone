class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|

      t.string :description
      t.string :image
      t.integer :product_id
      t.string :product_token
      t.attachment :image

      t.timestamps
    end
  end
end
