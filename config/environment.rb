require 'bundler/setup'
Bundler.require

require_relative '../lib/parser'
require_relative '../lib/bot'
require_relative '../lib/web'

## Define the URL to scrape
WOD_URL = "https://www.merriam-webster.com/word-of-the-day"

## Turn on logging
SlackRubyBot::Client.logger.level = Logger::WARN
