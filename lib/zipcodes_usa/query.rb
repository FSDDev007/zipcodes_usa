# frozen_string_literal: true

module ZipcodesUsa
  # Query
  class Query
    class << self
      def select(city: nil, state: nil, code: nil)
        zipcode_list = data_list

        zipcode_list = zipcode_list.select { |x| x['city'] == city } unless city.nil?
        zipcode_list = zipcode_list.select { |x| x['state'] == state } unless state.nil?
        zipcode_list = zipcode_list.select { |x| x['code'] == code } unless code.nil?

        zipcode_list
      end

      # def select_city(city: nil)
      #   zipcode_list = YAML.load_file('zipcode.yaml')
      #   zipcode_list.select { |x| x['city'] == city }
      # end

      # def select_state(state: nil)
      #   zipcode_list = YAML.load_file('zipcode.yaml')
      #   zipcode_list.select { |x| x['state'] == state }
      # end

      # def select_five_g_coverage(coverage)
      #   zipcode_list = YAML.load_file('output.yaml')
      #   zipcode_list.select { |x| x['5G'] == coverage }
      # end

      def details(code)
        zipcode_list = YAML.load_file('zipcode.yaml')
        zipcode_list[code.to_i]
      rescue StandardError
        {}
      end

      private

      def data_list
        YAML.load_file('zipcode.yaml')
      end
    end
  end
end
