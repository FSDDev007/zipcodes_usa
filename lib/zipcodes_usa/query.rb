# frozen_string_literal: true

module ZipcodesUsa
  # Query
  class Query
    class << self
      def select_city(city: nil)
        zipcode_list = YAML.load_file('zipcode.yaml')
        zipcode_list.select { |x| x['city'] == city }
      end

      def select_state(state: nil)
        zipcode_list = YAML.load_file('zipcode.yaml')
        zipcode_list.select { |x| x['state'] == state }
      end
    end
  end
end
