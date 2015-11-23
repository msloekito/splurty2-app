require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = Quote.create(:author => 'Nacho', :saying => 'Get that corn out of my face.')
    expected = 'N#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
  
  
end
