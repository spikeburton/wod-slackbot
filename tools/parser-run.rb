
#for testing page and css selectors
page = Nokogiri::HTML(RestClient.get("https://www.merriam-webster.com/word-of-the-day"))

header = page.css(".word-header").css("h1")
header.inner_text
binding.pry
