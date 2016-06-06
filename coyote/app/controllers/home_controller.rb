class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    # .cellMainLink

    page_object = Nokogiri::HTML(open("https://kat.cr/usearch/game/"))

    html_data = page_object.xpath("//a[@class='icon16']/@href").map do |n|
    	n.text
    end
    	
    @sup = html_data

  end
end
