require_relative "./env.rb"


page = Nokogiri::HTML(RestClient.get("https://www.merriam-webster.com/word-of-the-day"))

page.css("word-header").css("h1")
Pry.start
