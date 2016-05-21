class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :tiles, :type
  end

end
