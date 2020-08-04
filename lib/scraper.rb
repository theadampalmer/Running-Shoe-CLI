# require 'pry'
# require 'httparty'
# require 'nokogiri'
# require 'open-uri'

class Scraper
  def self.scrape_shoe(url)
    doc = Nokogiri::HTML(HTTParty.get(url))
    everyday_shoe = {}
    everyday_shoe [:model] = doc.css('.css-zis9ta').children[0].text
    everyday_shoe [:price] = doc.css('.css-1122yjz').text.slice(4..7)
    everyday_shoe [:description] = doc.css('.css-1pbvugb').children[0].text
    everyday_shoe
  end
end
# children[0].text
