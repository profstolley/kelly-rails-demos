require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  def new_case
    Case.new(title: "My Case Title",
              year: "yyyy",
              author: "yyy",
              abstract: "yyyy",
              subject: "yyy")
  end

  test "should have a title author year subject and abstract" do
    test_case = Case.new
    assert test_case.invalid?
    assert test_case.errors[:title].any?
  end
end
