class AddAttachmentMobileWireframeToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :mobile_wireframe
    end
  end

  def self.down
    remove_attachment :projects, :mobile_wireframe
  end
end
