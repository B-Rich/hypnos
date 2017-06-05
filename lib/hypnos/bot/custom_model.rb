require 'hypnos/bot/model/customizations'
require 'hypnos/bot/model/customization_id'
require 'hypnos/bot/model/customization_words'

module Hypnos
  module Bot
    class CustomModel < Olimpo::Base
      def self.lists_custom_model()
        response = get("/customizations")
        parsed_response = JSON.parse(response.body)
        return Hypnos::Bot::Customizations.new(parsed_response)  if response.success?

        raise_exception(response.code, response.body)
      end

      def self.create_a_custom_model(body)
        response = post("/customizations", query: {Content_Type: "application/json"} , body: body)
        parsed_response = JSON.parse(response.body)
        return Hypnos::Bot::CustomizationID.new(parsed_response) if response.success?

        raise_exception(response.code, response.body)
      end

      def self.delete_a_custom_model(customization_id)
        response = delete("/customizations/#{customization_id}")
        response.success?
      end

      def self.list_a_custom_model(customization_id)
        response = get("/customizations/#{customization_id}")
        parsed_response = JSON.parse(response.body)
        return Hypnos::Bot::CustomizationWords.new(parsed_response) if response.success?

        raise_exception(response.code, response.body)
      end
    end
  end
end
