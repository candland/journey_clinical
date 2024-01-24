require "test_helper"

class TherapistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapist = therapists(:one)
  end

  test "should get index" do
    get therapists_url
    assert_response :success
  end

  test "should get index filtered" do
    get therapists_url params: {insurance: "1"}
    assert_response :success
  end

  test "should get index remote" do
    get therapists_url params: {remote: "no"}
    assert_response :success
  end

  test "should get index city" do
    get therapists_url params: {city: "Brooklyn"}
    assert_response :success
  end

  test "should show therapist" do
    get therapist_url(@therapist)
    assert_response :success
  end
end
