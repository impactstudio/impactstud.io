class Testimonial < ActiveRecord::Base
  has_one :project
  has_many :clients, through: :project
end
