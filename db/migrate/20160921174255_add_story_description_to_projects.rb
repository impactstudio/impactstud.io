class AddStoryDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :story_description, :string
  end
end
