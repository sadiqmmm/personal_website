class StaticPagesController < ApplicationController
  def home
    @last_articles = Article.order("created_at DESC").limit(3)
  end
end
