require 'sinatra/base'

module WODBot
  class Web < Sinatra::Base
    get '/' do
      "What's up, fool?"
    end
  end
end
