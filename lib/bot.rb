require_relative '../config/environment'

module WODBot
  class App < SlackRubyBot::Bot
    @@parser = Parser.new

    # command 'word' do |client, data, _match|
    #   # binding.pry
    #   client.web_client.chat_postMessage(channel: data.channel, text: "Today's word is _*#{@@parser.fetch.capitalize}*_")
    # end

    # command 'def' do |client, data, _match|
    #   @@parser.definition.each do |c|
    #     client.web_client.chat_postMessage(channel: data.channel, text: "_#{c}_")
    #   end
    # end

    command /.*\bword\b.*$/i do |client, data, _match|
      @@parser.fetch

      client.say(channel: data.channel, text: "Today's word is _*#{@@parser.todays_word.capitalize}*_")
      @@parser.definition.each do |c|
        client.say(channel: data.channel, text: "_#{c}_")
      end
    end

    command /.*\b(hello|hi|hey|yo)\b.*$/i do |client, data, _match|
      # sayings = ["What's up, fool?", "You already know what tf is goin' on", "Yo, I'm feeling sassy",
      #   "Weird flex but aight", "👋"]
      sayings = ["What's up, fool?", "Yo, I'm feeling sassy", "👋"]

      client.say(channel: data.channel, text: sayings.sample)
    end

    command /.*\bcoffee\b.*$/i do |client, data, _match|
      client.say(channel: data.channel, text: "☕️")
    end

    command /.*\b(thank you|thanks)\b.*$/i do |client, data, _match|
      sayings = ["🙏", "👊"]

      client.say(channel: data.channel, text: sayings.sample)
    end

    command 'ping' do |client, data, _match|
      client.say(channel: data.channel, text: 'pong 🏓')
    end
  end

  class Default < SlackRubyBot::Commands::Base
    match /^(?<bot>\w*)$/

    def self.call(client, data, _match)
      client.say(channel: data.channel, text: "Uhhh")
    end
  end
end
