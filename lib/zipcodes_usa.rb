# frozen_string_literal: true

require 'zipcodes_usa/version'
require 'yaml'
require 'zipcodes_usa/query'
# require 'pry'

module ZipcodesUsa
  # WorkerScrape Service
  class Error < StandardError; end

  class Find < Query
    def initialize(zipcode = nil, state: nil, city: nil)
      @code  = zipcode
      @state = state
      @city  = city
    end

    def details(code = nil)
      code = @code if code.nil?
      # zipcode_list = YAML.load_file('US.yml')
      # zipcode_list = YAML.load_file('output.yaml')
      zipcode_list = YAML.load_file('zipcode.yaml')
      zipcode_list[code.to_i] rescue {}
      puts zipcode_list[code.to_i]

      zipcode_list.select { |x| x['state'] == 'AK' }
    end

    def fetch_cities(city: nil)
      city = @city if city.nil?
      Query.select_city(city: city)
    end

    def fetch_states(state: nil)
      state = @state if state.nil?
      Query.select_state(state: state)
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
# ZipcodesUsa::Find.new(city: 'Anchorage').fetch_cities
# ZipcodesUsa::Find.new(state: 'AK').fetch_states
