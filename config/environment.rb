require 'bundler/setup'
Bundler.require

require_relative '../lib/parser'
require_relative '../lib/bot'

## Turn on logging
SlackRubyBot::Client.logger.level = Logger::WARN
