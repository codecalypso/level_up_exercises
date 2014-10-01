require_relative 'loader'
require 'abanalyzer'

module DataScience
  class DataCalculator
    def initialize(data_hash)
      @data_hash = data_hash
    end

    def count(cohort)
      @data_hash.count do |x|
        x["cohort"] == cohort
      end
    end

    def conversion_rate(cohort)
      conversions(cohort) / count(cohort).to_f
    end

    def conversions(cohort)
      @data_hash.count do |x|
        x["result"] == 1 && x["cohort"] == cohort
      end
    end

    def bounce_rate(cohort)
      1 - conversion_rate(cohort)
    end

    def standard_error(cohort)
      p = conversion_rate(cohort)
      n = count(cohort)
      Math.sqrt(p * (1 - p) / n)
    end

    def interval(cohort)
      success = conversion_rate(cohort)
      trials  = count(cohort)
      ABAnalyzer.confidence_interval(success, trials, 0.95)
    end

    def print_results(cohort)
      puts "Cohort count: #{calculator.count(cohort)}"
      puts "Cohort conversion: #{calculator.conversion_rate(cohort)}"
      puts "Cohort standard error: #{calculator.standard_error(cohort)}"
      puts "Cohort confidence interval: #{calculator.interval(cohort)}"
    end
  end
end

data = DataScience::Loader.new("data/source_data.json").parse_json
DataScience::DataCalculator.new(data)
