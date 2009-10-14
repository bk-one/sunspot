module Sunspot
  module DSL
    attr :query
    
    # 
    # This DSL exposes the functionality provided by Solr's fulltext Dismax
    # handler.
    #
    class RawQuery
      def initialize(query, options) #:nodoc:
        @query, @setup = query, options
      end

      # 
      # RawQuery allows you to send a raw query in solr-search-syntax
      # to the solr-server, in case the standard dsl options are not
      # sufficient. 
      #
      # === Example
      #
      #   Sunspot.search do
      #     raw_query "(+field:something~0.8)"
      #   end
      #
      # You may also pass a hash of options as the last argument. Options are
      # the following:
      #
      # :TBD:
      
      
    end
  end
end
