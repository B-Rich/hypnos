module Hypnos
  module Bot
    class Pronunciation
      attr_reader :pronunciation

      def initialize(attrs = {})
        @pronunciation = attrs["pronunciation"]
      end
    end
  end
end
