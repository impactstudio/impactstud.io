class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
end
