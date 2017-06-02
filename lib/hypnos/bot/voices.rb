require 'hypnos/bot/model/voice_set'
require 'hypnos/bot/model/voice_customization'

module Hypnos
  module Bot
    class Voices < Olimpo::Base
      def self.get_voices
        response = get("/voices")
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::VoiceSet.new(parsed_response)
      end

      def self.get_a_voice(voice)
        response = get("/voices/#{voice}")
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::VoiceCustomization.new(parsed_response)
      end
    end
  end
end
