require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  test "work should not save with no associated user" do
  	work = Work.first
  	assert work.valid?, "work should be valid"
  	work.user_id = nil
  	assert_not work.valid?, "work should be invalid"   	
  end

  test "datetimeperformed should be in past" do
  	work = Work.first
  	assert work.valid?, "work should be valid"
  	work.datetimeperformed = Date.today + 2.years
  	assert work.invalid?, "work should be invalid"
  	assert work.errors[:datetimeperformed].any?, "work should have datetimeperformed error"
  end
end
