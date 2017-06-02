require 'spec_helper'

describe Hypnos::Bot::Pronunciations do
  describe '.pronunciations' do
    it "should return an instance of Hypnos::Bot::Pronunciation" do
      stub_response = ExamplePronunciationResponse.new
      allow(Hypnos::Bot::Pronunciations).to receive(:get).and_return(stub_response)
      expect(Hypnos::Bot::Pronunciations.get_pronunciation("")).to be_kind_of(Hypnos::Bot::Pronunciation)
    end
  end
end

class ExamplePronunciationResponse
  def body
   '{
      "pronunciation": "string"
    }'
  end
end
