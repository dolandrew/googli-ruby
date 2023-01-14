class ResultsController < ApplicationController
  def index
    if params[:query].present?
      query = params[:query].strip.downcase
      @songs = Song.where("name_lower like '%#{query}%' OR lyrics like '%#{query}%'")
      @results = []
      pattern = Regexp.new("\\b.{0,30}#{query}.{0,30}\\b")
      @songs.each do |song|
        @snippets = song.lyrics.scan(pattern).map do |snip|
          "...#{snip.gsub!(query, "<b>#{query}</b>")}...".html_safe
        end
        @results << {
          'name' => song.name,
          'link' => song.link,
          'snippets' => @snippets
        }
      end
    else
      @results = []
    end
    @results
  end
end
