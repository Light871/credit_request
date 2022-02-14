require "test_helper"

class LoanRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get loan_requests_show_url
    assert_response :success
  end

  test "should get new" do
    get loan_requests_new_url
    assert_response :success
  end

  test "should get create" do
    get loan_requests_create_url
    assert_response :success
  end
end
