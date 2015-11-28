require "test_helper"

class BudgetTest < ActiveSupport::TestCase

	test "should not save budget without amount" do 
		budget = Budget.new
		assert_not budget.save
	end
end
