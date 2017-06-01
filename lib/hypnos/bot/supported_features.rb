module Hypnos
  module Bot
    class SupportedFeatures
      attr_reader :custom_pronunciation, :voice_transformation

      def initialize(attrs = {})
        @custom_pronunciation = attrs["custom_pronunciation"]
        @voice_transformation = attrs["voice_transformation"]
      end
    end
  end
end
