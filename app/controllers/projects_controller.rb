class ProjectsController < ApplicationController
  def index
    @featured_projects = Project.where(featured:"true").order(created_at: :desc)
    @projects = Project.where(featured:"false").order(created_at: :desc)
  end

  def show
    @project = Project.find(params[:id])
    @images = Image.where(imageable_type:"Project")
  end
end
