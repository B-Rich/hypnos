require 'hypnos/bot/model/customization'

module Hypnos
  module Bot
    class Customizations
      attr_reader :customizations

      def initialize(attrs = {})
        @customizations = []
        build_customization(attrs["customizations"])
      end

      def build_customization(customizations)
        customizations.each do |customization|
          @customizations << Hypnos::Bot::Customization.new(customization)
        end
      end
    end
  end
end
