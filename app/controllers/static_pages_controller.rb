class StaticPagesController < ApplicationController
  def home
    @last_articles = Article.order("created_at DESC").limit(3)
    @last_projects = Project.order("created_at DESC").limit(5)
  end
end
