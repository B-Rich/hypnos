require 'spec_helper'

describe Hypnos::Bot::Voices do
  describe '.get_voices' do

    it 'shoud return an instance of Hypnos::Bot::VoiceSet' do
      stub_response = ExampleGetVoicesResponse.new
      allow(Hypnos::Bot::Voices).to receive(:get).and_return(stub_response)
      expect(Hypnos::Bot::Voices.get_voices()).to be_kind_of(Hypnos::Bot::VoiceSet)
    end
  end

  describe '.get_a_voice' do
    it 'shoud return an instance of Hypnos::Bot::VoiceSet' do
      stub_response = ExampleGetAVoiceResponse.new
      allow(Hypnos::Bot::Voices).to receive(:get).and_return(stub_response)
      expect(Hypnos::Bot::Voices.get_a_voice("")).to be_kind_of(Hypnos::Bot::VoiceCustomization)
    end
  end
end

class ExampleGetVoicesResponse
  def body
   '{
      "voices": [
        {
          "url": "string",
          "gender": "string",
          "name": "string",
          "language": "string",
          "description": "string",
          "customizable": true,
          "supported_features": {
            "custom_pronunciation": true,
            "voice_transformation": true
          }
        }
      ]
    }'
  end
end

class ExampleGetAVoiceResponse
  def body
    '{
      "url": "string",
      "gender": "string",
      "name": "string",
      "language": "string",
      "description": "string",
      "customizable": true,
      "supported_features": {
        "custom_pronunciation": true,
        "voice_transformation": true
      },
      "customization": {
        "customization_id": "string",
        "name": "string",
        "language": "de-DE",
        "owner": "string",
        "created": "string",
        "last_modified": "string",
        "description": "string"
      }
    }'
  end
end
