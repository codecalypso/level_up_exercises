load 'main.rb'
require 'test/support/rspec/spec_helper'

module DataScience
  describe DataCalculator do
    let(:data) do
      [
        { "date" => "2014-03-20", "cohort" => "B", "result" => 0 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 0 },
        { "date" => "2014-03-20", "cohort" => "A", "result" => 0 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
        { "date" => "2014-03-20", "cohort" => "A", "result" => 1 },
        { "date" => "2014-03-20", "cohort" => "A", "result" => 1 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 0 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
        { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
      ]
    end

    let(:calculator) { DataCalculator.new(data) }

    describe "#conversion_rate" do
      it "calculates cohort conversion" do
        expect(calculator.conversion_rate("A")).to be_within(0.1).of(0.66)
      end
    end

    describe "#interval" do
      it "calculates the confidence interval" do
        expect(calculator.interval("A")[0]).to be_within(0.1).of(-0.2487)
        expect(calculator.interval("A")[1]).to be_within(0.1).of(0.6887)
      end
    end

    describe "#standard_error" do
      it "calculates standard_error of A or B" do
        expect(calculator.standard_error("A")).to be_within(0.1).of(0.272165)
      end
    end

    describe "#bounce_rate" do
      it "calculate bounce rate of A or B" do
        expect(calculator.standard_error("A")).to be_within(0.1).of(0.33)
      end
    end
  end
end
