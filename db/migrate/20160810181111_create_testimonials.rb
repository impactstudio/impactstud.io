class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
