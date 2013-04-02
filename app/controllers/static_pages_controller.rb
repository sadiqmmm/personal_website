class StaticPagesController < ApplicationController
  def home
    @last_articles = Article.order("created_at DESC").limit(3)
    @more_articles = Article.order("created_at DESC").offset(3).limit(6)
  end
end
