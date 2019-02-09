# A simple Slackbot used to generate a random word of the day
## Setup
First run `bundle` from the root directory to install dependencies. Place your `SLACK_API_TOKEN` in a new file named `config/.token`.
### Requirements
* Celluloid-IO
* Slack-Ruby-Bot
* Nokogiri
* Rest-Client
* Pry
## Run
Run `rake deploy:run` from the root directory to deploy the bot to your workspace.

You can also run `rake console` to drop into `pry` and play with the code.

## Parser
By default `Parser.new()` uses the merriam webster url [https://www.merriam-webster.com/word-of-the-day]
### Fetching Word of The Day
1. `Parser.new()`
2. `Parser.fetch`
3. `Parser.definition`
