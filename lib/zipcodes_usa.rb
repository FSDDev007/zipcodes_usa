# frozen_string_literal: true

require 'zipcodes_usa/version'
require 'yaml'
require 'zipcodes_usa/query'
# require 'pry'

module ZipcodesUsa
  # WorkerScrape Service
  class Error < StandardError; end

  class Data < Query
    # def initialize(code = nil, state: nil, city: nil, coverage: nil)
    #   @code  = code
    #   @state = state
    #   @city  = city
    #   @coverage = coverage
    # end

    # def details(code = nil)
    #   code = @code if code.nil?
    #   Query.find_details(code)
    # end

    # def fetch_cities(city: nil)
    #   city = @city if city.nil?
    #   Query.select_city(city: city)
    # end

    # def fetch_states(state: nil)
    #   state = @state if state.nil?
    #   Query.select_state(state: state)
    # end

    # def fetch_five_g_coverage(coverage: nil)
    #   coverage = @coverage if coverage.nil?
    #   Query.select_five_g_coverage(coverage)
    # end
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
# ZipcodesUsa::Find.new(city: 'Anchorage').fetch_cities
# ZipcodesUsa::Find.new(state: 'AK').fetch_states
# ZipcodesUsa::Find.new(coverage: 'false').fetch_five_g_coverage
