require 'hypnos/bot/voice_set'

module Hypnos
  module Bot
    class Voices < Olimpo::Base
      def self.get_voices
        response = get("/voices")
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::VoiceSet.new(parsed_response)
      end
    end
  end
end
