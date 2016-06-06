class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    page_object = Nokogiri::HTML(open("https://kat.cr/usearch/game%20of%20thrones/"))

    magnet_links = page_object.xpath("//a[@title='Torrent magnet link']/@href").map do |n|
    	n.text
    end

    @sup = magnet_links

    torrent_titles = page_object.xpath("//a[@class='cellMainLink']").map do |n|
    	n.text
    end

    @sup = magnet_links
    @chillin = torrent_titles
    
  #   entire_result = page_object.xpath("//tr").each do |n|
		# doc.css("NewsResult").map{|nr| [nr.at('Title'),nr.at('Snippet'),nr.at('Url'),nr.at('Source')].map(&:text)}
  #   end

  #   @result = entire_result
  #   # @torrent_title = entire_result.torrent_title
  #   # @magnet_link = entire_result.magnet_link

  end
end
