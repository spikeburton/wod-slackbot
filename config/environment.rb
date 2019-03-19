require 'bundler/setup'
Bundler.require

require_relative '../lib/parser'
require_relative '../lib/bot'

## Turn on logging
SlackRubyBot::Client.logger.level = Logger::WARN

## Define the URL to scrape
WOD_URL = "https://www.merriam-webster.com/word-of-the-day"
