module Utils
  class FieldCombiner
    # Cleaning up our query types
    # https://m.alphasights.com/graphql-ruby-clean-up-your-query-type-d7ab05a47084
    # Method to iterate through list of queryTypes and merge fields on each
    def self.combine(query_types)
      Array(query_types).inject({}) do |acc, query_type|
        acc.merge!(query_type.fields)
      end
    end
  end
end