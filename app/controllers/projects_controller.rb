class ProjectsController < ApplicationController
  def index
    @projects = current_user.projects.all
    @project = Project.new
  end

  def create
    @projects = current_user.projects.all
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:notice] = "#{@project.name} has been added to your project list."
      redirect_to projects_path
    else
      render :index
    end
  end
end
