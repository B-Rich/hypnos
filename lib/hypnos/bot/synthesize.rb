require 'hypnos/bot/model/pronunciation'

module Hypnos
  module Bot
    class Synthesize < Olimpo::Base
      def self.get_pronunciation(text, options = {})
        response = get("/pronunciation?text=#{text}", query: options)
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::Pronunciation.new(parsed_response)
      end
    end
  end
end
