# frozen_string_literal: true

require 'zipcodes_usa/version'
require 'yaml'
require 'zipcodes_usa/query'

module ZipcodesUsa
  # WorkerScrape Service
  class Error < StandardError; end

  class Data < Query
  end
end
