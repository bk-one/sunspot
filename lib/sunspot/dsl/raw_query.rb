module Sunspot
  module DSL
    attr :query_parameters
    # 
    # This DSL gives full control over the request that
    # will be send to solr. You can pass parameters for
    # there query as a hash.
    #
    class RawQuery
      def initialize(query_parameters) #:nodoc:
        @query_parameters = query_parameters
      end
    end
  end
end
