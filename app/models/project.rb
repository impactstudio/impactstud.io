class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  accepts_nested_attributes_for :clients
  has_attached_file :main_image
  has_attached_file :mobile_image
  has_attached_file :desktop_image
  has_attached_file :logo
  has_attached_file :tablet
  has_attached_file :phone
  validates_attachment :main_image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :mobile_image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :desktop_image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :logo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :tablet, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :phone, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
