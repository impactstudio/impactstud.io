class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  has_attached_file :main_image
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
  has_attached_file :mobile_image_one
  validates_attachment_content_type :mobile_image_one, content_type: /\Aimage\/.*\Z/
  has_attached_file :mobile_image_two
  validates_attachment_content_type :mobile_image_two, content_type: /\Aimage\/.*\Z/

end
