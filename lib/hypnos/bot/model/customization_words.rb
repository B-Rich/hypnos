require 'hypnos/bot/model/word'

module Hypnos
  module Bot
    class CustomizationWords
      attr_reader :customization_id, :name, :language, :owner, :created, :last_modified, :description, :words

      def initialize(attrs = {})
        @customization_id = attrs["customization_id"]
        @name = attrs["name"]
        @language = attrs["language"]
        @owner = attrs["owner"]
        @created = attrs["created"]
        @last_modified = attrs["last_modified"]
        @description = attrs["description"]
        @words = []
        build_words(attrs["words"])
      end

      def build_words(words)
        words.each do |word|
          words << Hypnos::Bot::Word.new(word)
        end
      end
    end
  end
end
