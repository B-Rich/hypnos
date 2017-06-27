module Hypnos
  module Bot
    class Synthesize < Olimpo::Base
      def self.get_synthesize(text)
        response = get("/synthesize", query: {text: text})

        return response if response.success?
        raise_exception(response.code, response.body)
      end

      def self.post_synthesize(text)
        response = post("/synthesize", headers: { "Content-Type" => "application/json" }, body: { text: text }.to_json )

        return response if response.success?
        raise_exception(response.code, response.body)
      end
    end
  end
end
