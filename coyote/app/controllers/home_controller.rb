class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    @sup= Nokogiri::HTML(open("https://kat.cr/usearch/game/"))
    
    @sup.xpath('//a').each do |node|
    	puts node.text
    end


  end
end
