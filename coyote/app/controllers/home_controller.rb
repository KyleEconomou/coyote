class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    search = Nokogiri::HTML(open("https://kat.cr/usearch/game/"))

    @sup = search

  end
end
