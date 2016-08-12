class ProjectPolicy < ApplicationPolicy
  def new?
    user
  end

  def edit?
    user
  end

  def destroy
    user
  end
end
