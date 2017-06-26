require 'spec_helper'

describe Hypnos::Bot::CustomModel do
  describe '.lists_custom_model' do
    it "should be of instance Hypnos::Bot::Customizations" do
      stub_response = ExampleListsACustomModelResponse.new
      allow(Hypnos::Bot::CustomModel).to receive(:get).and_return(stub_response)
      expect(Hypnos::Bot::CustomModel.lists_custom_model()).to be_kind_of(Hypnos::Bot::Customizations)
    end
  end

  describe '.create_a_custom_model' do
    it "should be of instance Hypnos::Bot::CustomizationID" do
      stub_response = ExampleCreateACustomModelResponse.new
      allow(Hypnos::Bot::CustomModel).to receive(:post).and_return(stub_response)
      expect(Hypnos::Bot::CustomModel.create_a_custom_model("")).to be_kind_of(Hypnos::Bot::CustomizationID)
    end
  end
end

class ExampleListsACustomModelResponse
  def body
    '{
        "customizations": [
          {
            "customization_id": "string",
            "name": "string",
            "language": "de-DE",
            "owner": "string",
            "created": "string",
            "last_modified": "string",
            "description": "string"
          }
        ]
      }'
  end

  def success?
    true
  end
end

class ExampleCreateACustomModelResponse
  def body
    '{ "customization_id": "string" }'
  end

  def success?
    true
  end
end
