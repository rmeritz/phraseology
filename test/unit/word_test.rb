require 'test_helper'
 
class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "create_two_related_words" do
    assert_nil Word.find(:word => 'blue')
  end
end
