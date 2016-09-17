class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  # has_attached_file :main_image
  # validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
end
