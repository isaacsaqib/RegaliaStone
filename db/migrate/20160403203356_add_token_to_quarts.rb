class AddTokenToQuarts < ActiveRecord::Migration
  def change
  	add_column :quarts, :token, :string
  end
end

