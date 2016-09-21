class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @project = Project.new
    @project.clients.build
    authorize @project
  end

  def create
    if @project.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    authorize @project
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
