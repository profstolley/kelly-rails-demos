require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  def new_case
    Case.new(title: "My Case Title",
              year: "yyyy"
              author: "yyy"
              abstract: "yyyy"
              subject: "yyy")
end

  test "should have the necessary required validators" do
    case = Case.new
    assert_not case.valid?
    assert_equal [:title, :year, :author, :abstract, :subject], case.error.keys 

end
