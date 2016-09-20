class AddAttachmentDesktopImageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :desktop_image
    end
  end

  def self.down
    remove_attachment :projects, :desktop_image
  end
end
