module Hypnos
  module Bot
    class Customization
      attr_reader :customization_id, :name, :language, :owner, :created, :last_modified, :description

      def initialize(attrs = {})
        @customization_id = attrs["customization_id"]
        @name = attrs["name"]
        @language = attrs["language"]
        @owner = attrs["owner"]
        @created = attrs["created"]
        @last_modified = attrs["last_modified"]
        @description = attrs["description"]
      end
    end
  end
end
