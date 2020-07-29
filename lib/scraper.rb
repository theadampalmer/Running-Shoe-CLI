class Scraper

    def scraping_tool
	    url = "https://www.scarymommy.com/michael-scott-quotes/"
	    unparsed_page = HTTParty.get(url)
	    parsed_page = Nokogiri::HTML(unparsed_page)
	    byebug
    end

end


#no puts or gets in here at all