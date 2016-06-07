class HomeController < ApplicationController
  def index
  	
  	require 'open-uri'
    require 'nokogiri'

    #kat = kickass torrents

    kat_page_object = Nokogiri::HTML(open("https://kat.cr/usearch/game%20of%20thrones/"))

    kat_entire_result = kat_page_object.xpath('//tr[contains(@class, "odd") or contains(@class, "even")]')

    kat_result_data = []

    # kat_magnet_link = kat_page_object.xpath("//a[@title="magnet"]/@href")

    kat_entire_result.each do |result|
    	title = result.css('.cellMainLink').text
    	magnet = result.css("a[data-nop]").attr('href')
    	kat_result_data << [title, magnet]
    end

    # kat_torrent_titles = kat_entire_result.map{ |node| node['.cellMainLink'] }

    # kat_parsed_result = kat_entire_result.xpath('//tr').map do |n|
    # 	Hash[ n.map { |k, v| [k.to_sym, v.to_s] } ]
    # end

    # @sup = magnet_links

    # kat_torrent_titles = kat_page_object.xpath("//a[@class='cellMainLink']").map do |n|
    # 	kat_title << n.text
    # end



    # kat_magnet_links = kat_page_object.xpath("//a[@title='Torrent magnet link']/@href").map do |x|
    # 	kat_magnet << x.text
    # end

    @result = kat_result_data
    # n.xpath("//a[@class='cellMainLink']").push(kat_title)
    # n.xpath("//a[@title='Torrent magnet link']/@href").push(kat_magnet)

    # @sup = magnet_links
    # @chillin = torrent_titles


	#  # @torrent_title = entire_result.torrent_title
	#  # @magnet_link = entire_result.magnet_link

  end
end
