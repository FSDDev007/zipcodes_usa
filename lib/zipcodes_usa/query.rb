# frozen_string_literal: true

module ZipcodesUsa
  class Query
    class << self
      def select(city: nil, state: nil, postal_code: nil)
        zipcode_list = data_list

        zipcode_list = zipcode_list.select { |x| x['city'] == city } unless city.nil?
        zipcode_list = zipcode_list.select { |x| x['state'] == state } unless state.nil?
        zipcode_list = zipcode_list.select { |x| x['postal_code'] == postal_code } unless postal_code.nil?

        # %w[city state code].each do |item|
        #   next unless item.nil?

        #   zipcode_list = zipcode_list.select { |x| x[item] == eval(item) }
        # end

        zipcode_list
      end

      def cities(postal_code: nil, state: nil)
        zipcode_list = data_list

        zipcode_list = zipcode_list.select { |x| x['state'] == state } unless state.nil?
        zipcode_list = zipcode_list.select { |x| x['postal_code'] == postal_code } unless postal_code.nil?

        # zipcode_list.pluck(:city)
        zipcode_list.map { |x| x['city'] }
      end

      def details(postal_code)
        zipcode_list = data_list
        zipcode_list[postal_code.to_i]
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
