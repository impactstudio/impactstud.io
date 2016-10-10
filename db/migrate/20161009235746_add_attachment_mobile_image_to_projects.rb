class AddAttachmentMobileImageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :mobile_image
    end
  end

  def self.down
    remove_attachment :projects, :mobile_image
  end
end
