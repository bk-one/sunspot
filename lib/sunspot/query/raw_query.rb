module Sunspot
  module Query
    class RawQuery
      def initialize(raw_query_parameters)
        @parameters = raw_query_parameters
      end

      # 
      # The query as Solr parameters
      #
      def to_params
        @parameters
      end
    end
  end
end