require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'raw query', :type => :query do
  it 'should pass a raw query unchanged' do
    raw_query_string = 'this:"is~ a~" AND raw~ AND (q|u|e|r|y)'
    session.search(Post) do
      raw_query :q => raw_query_string
    end
    connection.should have_last_search_with(:q => raw_query_string)
  end
  
  it 'should not set the defType to dismax' do
    session.search Post do
        raw_query :q => "some string"
    end
    connection.should_not have_last_search_with(:defType => 'dismax')
  end
  
  it 'should raise an exception, when trying to perform for a raw and fulltext at the same time' do
    lambda {
      session.search Post do
        raw_query :q => 'some string'
        fulltext  'another string'
      end
    }.should raise_error Sunspot::IllegalSearchError, "Can't perform search with both fulltext and raw_query components"
  end
  
  
end