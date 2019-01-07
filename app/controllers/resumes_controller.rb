class ResumesController < ApplicationController
  # GET /resumes
  # GET /resumes.json
  def index
    @resumes = Resume.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resumes }
    end
  end
end
