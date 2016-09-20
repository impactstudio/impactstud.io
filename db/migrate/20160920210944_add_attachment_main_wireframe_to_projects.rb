class AddAttachmentMainWireframeToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :main_wireframe
    end
  end

  def self.down
    remove_attachment :projects, :main_wireframe
  end
end
