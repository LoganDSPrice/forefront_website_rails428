class TestController < ApplicationController
  def test
    @projects = Project.where(featured:true)
    @articles = Article.order(created_at: :desc).limit(3)
    render("test/index-slider.html.erb")
  end
end
