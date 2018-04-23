class AddAttachmentAvatarToCriminals < ActiveRecord::Migration[5.1]
  def self.up
    change_table :criminals do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :criminals, :avatar
  end
end
