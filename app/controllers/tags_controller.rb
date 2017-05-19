class TagsController < ApplicationController
  def index
  end

  def show
    @tag = Tag.find(params[:id])
    @featured_projects = @tag.projects.where(featured: true)
    @projects = @tag.projects.where(featured: false)
  end
end
