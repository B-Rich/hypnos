require 'hypnos/bot/model/customizations'
require 'hypnos/bot/model/customization_id'

module Hypnos
  module Bot
    class CustomModel < Olimpo::Base
      def self.lists_custom_model()
        response = get("/customizations")
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::Customizations.new(parsed_response)
      end

      def self.create_a_custom_model(body)
        response = post("/customizations", query: {Content_Type: "application/json"} , body: body)
        parsed_response = JSON.parse(response.body)
        Hypnos::Bot::CustomizationID.new(parsed_response)
      end
    end
  end
end
