class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = 'Project added successfully'
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.friendly.find(params[:id])
  end

  def update
    @project = Project.friendly.find(params[:id])
    @project.slug = nil
    if @project.update(project_params)
      flash[:success] = 'Project updated'
      redirect_to @project
    else
      render 'edit'
    end
  end

  def project_params
    params.require(:project).permit(:name, :code, :client_id)
  end
end
