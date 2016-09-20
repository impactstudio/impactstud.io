class AddAttachmentTabletToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :tablet
    end
  end

  def self.down
    remove_attachment :projects, :tablet
  end
end
