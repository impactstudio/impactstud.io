class ProjectsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @project = Project.new
    authorize @project
  end
end
