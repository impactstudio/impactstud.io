class AddAttachmentMobileImageOneToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :mobile_image_one
    end
  end

  def self.down
    remove_attachment :projects, :mobile_image_one
  end
end
