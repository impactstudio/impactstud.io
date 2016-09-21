class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  has_attached_file :main_image, :mobile_image, :desktop_image, :logo, :tablet, :phone
  validates_attachment :main_wireframe, :mobile_wireframe, :desktop_image, :logo, :tablet, :phone,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
