require_relative '../config/environment'

class WODBot < SlackRubyBot::Bot
  @@parser = Parser.new

  command 'word' do |client, data, _match|
    # parser = Parser.new

    client.web_client.chat_postMessage(channel: data.channel, text: "Today's word is *#{@@parser.fetch}*")
  end

  command 'def' do |client, data, _match|
    parser = Parser.new

    client.web_client.chat_postMessage(channel: data.channel, text: "_#{@@parser.definition}_")
  end
end
