#Get the merriam webster word of the day and
#return the word and defenition
class WordOfTheDay
  attr_reader :url, :page
  def initialize(url="https://www.merriam-webster.com/word-of-the-day")
    #word of the day url
    #https://www.merriam-webster.com/word-of-the-day
    #initcialze with a url
    @url = url
  end
  def fetch
    #do the http request with rest client
    #and return todays word as a curtesy
    @page = Nokogiri::HTML(RestClient.get(@url))
    todays_word
  end
  def todays_word
    #returns just todays WOD
    @page.css(".word-header").css("h1").inner_text
  end
  def definition
    #returns the WOD definition
    #this will probably break if the website changes
    @page.css(".wod-definition-container").css("p")[0].inner_text
  end
end
