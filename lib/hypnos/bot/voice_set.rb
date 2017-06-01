require 'hypnos/bot/voice'

module Hypnos
  module Bot
    class VoiceSet
      attr_reader :voices

      def initialize(attrs = {})
        @voices = []
        build_voices(attrs["voices"])
      end

      def build_voices(voices)
        voices.each do |voice|
          @voices << Hypnos::Bot::Voice.new(voice)
        end
      end

    end
  end
end
