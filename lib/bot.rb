require_relative '../config/environment'

class WODBot < SlackRubyBot::Bot
  @@parser = Parser.new

  command 'word' do |client, data, _match|
    # binding.pry
    client.web_client.chat_postMessage(channel: data.channel, text: "Today's word is _*#{@@parser.fetch.capitalize}*_")
  end

  command 'def' do |client, data, _match|
    @@parser.definition.each do |c|
      client.web_client.chat_postMessage(channel: data.channel, text: "_#{c}_")
    end
  end

  command 'list' do |client, data, _match|
    @@parser.fetch

    client.say(channel: data.channel, text: "Today's word is _*#{@@parser.todays_word.capitalize}*_")
    @@parser.definition.each do |c|
      client.say(channel: data.channel, text: "_#{c}_")
    end
  end

  command /hello|hi|hey|yo/i do |client, data, _match|
    sayings = ["What's up, bitch?", "You already know what tf is goin' on", "Yo, I'm feeling sassy",
      "Weird flex but aight", "👊"]

    client.say(channel: data.channel, text: sayings.sample)
  end

  command /coffee/i do |client, data, _match|
    client.say(channel: data.channel, text: "☕️")
  end

  command /thank you|thanks|/ do |client, data, _match|
    client.say(channel: data. channel, text: "🙏")
  end
end
