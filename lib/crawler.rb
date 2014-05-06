require 'nokogiri'
require 'open-uri'

class Crawler

  def initialize
    @url = 'http://www.nachrichtenleicht.de/uebersicht/nachrichten/'
    @image_url_prefix = 'http://www.nachrichtenleicht.de'
  end 

  def crawl
    items = []
    (0..10).each do |i|
      doc = Nokogiri::HTML(open(@url))
      doc.css(".entry-teaser").each do |item|
        link =  item.at_css('.image').at_css('a')
        items.push(
          {           
            :href => link[:href],
            :image_url => @image_url_prefix + link.at_css('img')[:src],
            :title => item.at_css('h2.entry-title').text,
            :short_description => item.at_css('p a').text.strip
          }
        )
      end
    end
    items
  end
end
