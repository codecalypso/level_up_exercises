load 'main.rb'
require 'test/support/rspec/spec_helper'

module DataScience
  describe "Loader" do
    describe "#initialize" do
      it "raises an error if the file does not exist" do
        expect { Loader.new("") }.to raise_error(Errno::ENOENT)
      end

      it "returns correct data" do
        expect(Loader.new("data/test.json").parse_json.count).to eq(1)
        expect(Loader.new("data/test.json").parse_json[0]["name"]).to eq("John")
        expect(Loader.new("data/test.json").parse_json[0]["age"]).to eq(24)
      end
    end
  end
end
