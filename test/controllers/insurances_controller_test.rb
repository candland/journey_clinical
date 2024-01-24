require "test_helper"

class InsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get insurances_url
    assert_response :success
  end

  test "should show insurance" do
    get insurance_url(@insurance)
    assert_response :success
  end
end
