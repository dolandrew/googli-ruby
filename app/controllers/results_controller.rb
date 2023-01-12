class ResultsController < ApplicationController
  def index
    @song = Song.find_by "lyrics like '%" + params[:query] + "%'" if params[:query].present?
  end
end
