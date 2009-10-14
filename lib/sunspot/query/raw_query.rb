module Sunspot
  module Query
    class RawQuery
      def initialize(raw_query, options)
        @query = raw_query
      end

      # 
      # The query as Solr parameters
      #
      def to_params
        params = { :q => @query }
      end
    end
  end
end