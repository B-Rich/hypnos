module Hypnos
  module Bot
    class Word
      attr_reader :word, :translation, :part_of_speech

      def initialize(attrs = {})
        @word = attrs["word"]
        @translation = attrs["translation"]
        @part_of_speech = attrs["part_of_speech"]
      end
    end
  end
end
