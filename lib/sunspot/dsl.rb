%w(fields scope field_query query fulltext query_facet restriction
   raw_query search).each do |file|
  require File.join(File.dirname(__FILE__), 'dsl', file)
end
