class NewsController < ApplicationController
  # controller knows that there will corresponding view  'index' in views folder
  def index
    @all_news = News.all
  end
end