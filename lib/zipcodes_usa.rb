# frozen_string_literal: true

require 'zipcodes_usa/version'
require 'yaml'
# require 'pry'

module ZipcodesUsa
  # WorkerScrape Service
  class Error < StandardError; end

  # Your code goes here...
  class Find
    def initialize(zipcode = nil)
      @code = zipcode
    end

    def details(code = nil)
      code = @code if code.nil?
      # zipcode_list = YAML.load_file('US.yml')
      zipcode_list = YAML.load_file('output.yaml')
      zipcode_list[code.to_i] rescue {}
      # puts zipcode_list[code.to_i]
    end
  end
end

# csv = File.read('t_mobile_availability1.csv')
# CSV.parse(csv, headers: true).each do |row|
#   puts row.to_h # print all zipcode data in hash formate
# end

# gem build zipcodes_usa && gem install zipcodes_usa && irb
# require 'zipcodes_usa'
# ZipcodesUsa::Find.new
# ZipcodesUsa::Find.new('12345').details
