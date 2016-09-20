class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  has_attached_file :main_wireframe
  validates_attachment :main_wireframe, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_attached_file :mobile_wireframe
  validates_attachment :mobile_wireframe, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_attached_file :desktop_image
  validates_attachment :desktop_image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_attached_file :logo
  validates_attachment :logo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_attached_file :tablet
  validates_attachment :tablet, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_attached_file :phone
  validates_attachment :phone, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
