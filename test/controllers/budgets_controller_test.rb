class BudgetsControllerTest < ActionController::TestCase
	test "should get index" do 
		get :index
		assert_response :success 
		# assert_not_nil assigns(:articles)
	end
end