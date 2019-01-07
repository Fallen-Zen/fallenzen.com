class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
  	@news = News.search(params[:sf], params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = News.find_by_slug(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news }
    end
  end
  
  def feed
  	@news = News.order("updated_at desc")

  	respond_to do |format|
      format.atom { render :layout => false }
    end
  end
end
