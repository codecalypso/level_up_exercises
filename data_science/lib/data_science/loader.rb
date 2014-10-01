require 'json'

module DataScience
  class Loader
  
    def initialize(filename)
      @filename = filename
      @file = File.read(@filename)
    end

    def parse_json
      JSON.parse(@file)
    end
  end
end
