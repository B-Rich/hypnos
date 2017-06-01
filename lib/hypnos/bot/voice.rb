require 'hypnos/bot/supported_features'

module Hypnos
  module Bot
    class Voice
      attr_reader :url, :gender, :name, :language, :description, :customizable ,:supported_features

      def initialize(attrs = {})
        @url = attrs["url"]
        @gender = attrs["gender"]
        @name = attrs["name"]
        @language = attrs["language"]
        @description = attrs["description"]
        @customizable = attrs["customizable"]
        @supported_features = Hypnos::Bot::SupportedFeatures.new(attrs["supported_features"])
      end
    end
  end
end
