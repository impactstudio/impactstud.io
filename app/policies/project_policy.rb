class ProjectPolicy < ApplicationPolicy
  def new?
    user
  end
end
