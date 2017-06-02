module Hypnos
  module Bot
    class CustomizationID
      attr_reader :customization_id
      def initialize(attrs = {})
        @customization_id = attrs["customization_id"]
      end
    end
  end
end
