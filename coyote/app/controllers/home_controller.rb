class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    # .cellMainLink

    page_object = Nokogiri::HTML(open("https://kat.cr/usearch/game/"))

    html_data = page_object.xpath("//a[@title='Torrent magnet link']/@href").map do |n|
    	n.text
    end
    	
    @sup = html_data

  end
end
