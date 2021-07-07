require 'nokogiri'
require 'open-uri'
require 'pry'

# This object has a single method which passes in a url, then gets the
# first paragraph of the page and returns it.
class Scraper
    
    def scrape_information (url)

        html = URI.open(url)

        doc = Nokogiri::HTML(html)

        information = doc.search('p').map(&:text)[1]

        return information

    end
end

scrape = Scraper.new

puts scrape.scrape_information("https://en.wikipedia.org/wiki/Wilfrid_Laurier")