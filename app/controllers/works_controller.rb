class WorksController < ApplicationController
  # GET /works
  # GET /works.json
  def index
    @works = Work.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @works }
    end
  end

  # GET /works/1
  # GET /works/1.json
  def show
    @work = Work.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work }
    end
  end
end
