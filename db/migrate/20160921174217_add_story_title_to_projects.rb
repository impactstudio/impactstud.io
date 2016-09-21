class AddStoryTitleToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :story_title, :string
  end
end
