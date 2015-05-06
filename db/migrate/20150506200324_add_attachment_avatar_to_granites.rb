class AddAttachmentAvatarToGranites < ActiveRecord::Migration
  def self.up
    change_table :granites do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :granites, :avatar
  end
end
