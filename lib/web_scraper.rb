require 'pry'
require 'httparty'
require 'nokogiri'
require 'open-uri'

class Scraper

    def self.scrape_everyday
        # binding.pry
        doc = Nokogiri::HTML(HTTParty.get("https://www.nike.com/t/air-zoom-pegasus-37-mens-running-shoe-extra-wide-KLvDcj/BQ9646-103"))
        puts "Model: " + doc.css(".css-zis9ta").text
        puts "Price: " + doc.css(".css-1bju4f3").text
        puts doc.css(".css-1pbvugb").text.scan(/[^.]*./)
    end

    def self.scrape_marathon
        doc = Nokogiri::HTML(HTTParty.get("https://www.nike.com/t/air-zoom-alphafly-next-mens-racing-shoe-2FN3N2/CI9925-100"))
        puts "Model: " + doc.css(".css-zis9ta").text
        puts "Price: " + doc.css(".css-1bju4f3").text
        puts doc.css(".css-1pbvugb").text.scan(/[^.]*./)
    end

    def self.scrape_speedwork
        doc = Nokogiri::HTML(HTTParty.get("https://www.nike.com/t/zoom-fly-3-premium-mens-running-shoe-XhzpPH/AT8240-103"))
        puts "Model: " + doc.css(".css-zis9ta").text
        puts "Price: " + doc.css(".css-1bju4f3").text
        puts doc.css(".css-1pbvugb").text.scan(/[^.]*./)
    end

    def self.scrape_trailrunner
        doc = Nokogiri::HTML(HTTParty.get("https://www.nike.com/t/air-zoom-terra-kiger-6-womens-trail-running-shoe-CnfDJ2/CJ0220-200"))
        puts "Model: " + doc.css(".css-zis9ta").text
        puts "Price: " + doc.css(".css-1bju4f3").text
        puts doc.css(".css-1pbvugb").text.scan(/[^.]*./)
    end

end