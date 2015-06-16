class NewsController < ApplicationController
  # controller knows that there will corresponding view  'index' in views folder
  def index
    @all_news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'News item was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @news = News.find(params[:id])

    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'News item was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @news = News.find(params[:id])
  end

  def edit
    @news = News.find(params[:id])

  end

  private
  def news_params
    params.require(:news).permit(:title, :text, :photo)
  end
end