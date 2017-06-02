require 'hypnos/bot/model/supported_features'
require 'hypnos/bot/model/customization'

module Hypnos
  module Bot
    class VoiceCustomization
      attr_reader :url, :gender, :name, :language, :description, :customizable, :supported_features, :customization

      def initialize(attrs = {})
        @url = attrs["url"]
        @gender = attrs["gender"]
        @name = attrs["name"]
        @language = attrs["language"]
        @description = attrs["description"]
        @customizable = attrs["customizable"]
        @supported_features = Hypnos::Bot::SupportedFeatures.new(attrs["supported_features"])
        @customization = Hypnos::Bot::Customization.new(attrs["customization"]) if attrs["customization"] != nil
      end
    end
  end
end
