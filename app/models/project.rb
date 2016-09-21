class Project < ActiveRecord::Base
  has_many :clients
  has_many :testimonials
  accepts_nested_attributes_for :clients
end
