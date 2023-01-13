class ResultsController < ApplicationController
  def index
    if params[:query].present?
      @songs = Song.where("lyrics like '%" + params[:query] + "%'")
    else
      @songs = Array.new
    end
    @songs
  end
end
