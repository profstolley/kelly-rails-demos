require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "should not save author without first or last name" do
    author = Author.new
    assert_not author.save
  end
end
