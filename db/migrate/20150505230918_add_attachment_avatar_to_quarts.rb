class AddAttachmentAvatarToQuarts < ActiveRecord::Migration
  def self.up
    change_table :quarts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :quarts, :avatar
  end
end
