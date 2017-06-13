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
    case = Case.new
    assert case.invalid?
    assert case.errors[:title].any?
end
