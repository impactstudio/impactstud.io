class AddAttachmentPhoneToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :phone
    end
  end

  def self.down
    remove_attachment :projects, :phone
  end
end
