require 'pry'
require 'httparty'
require 'nokogiri'
require 'open-uri'

class Scraper
  def self.scrape_shoe(url)
    doc = Nokogiri::HTML(HTTParty.get(url))
    shoe = {}     #created hash
    shoe [:model] = doc.css('.css-zis9ta').children[0].text
    shoe [:price] = doc.css('.css-1122yjz').text.slice(4..7)
    shoe [:description] = doc.css('.css-1pbvugb').children[0].text   #filling hash
    shoe    #returning hash
  
  end
end

