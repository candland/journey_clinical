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

  test "should get new" do
    get new_therapist_url
    assert_response :success
  end

  test "should create therapist" do
    assert_difference("Therapist.count") do
      post therapists_url, params: {therapist: {city: @therapist.city, name: @therapist.name, remote: @therapist.remote, state: @therapist.state, street: @therapist.street, street_2: @therapist.street_2, zip: @therapist.zip}}
    end

    assert_redirected_to therapist_url(Therapist.last)
  end

  test "should show therapist" do
    get therapist_url(@therapist)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapist_url(@therapist)
    assert_response :success
  end

  test "should update therapist" do
    patch therapist_url(@therapist), params: {therapist: {city: @therapist.city, name: @therapist.name, remote: @therapist.remote, state: @therapist.state, street: @therapist.street, street_2: @therapist.street_2, zip: @therapist.zip}}
    assert_redirected_to therapist_url(@therapist)
  end

  test "should destroy therapist" do
    assert_difference("Therapist.count", -1) do
      delete therapist_url(@therapist)
    end

    assert_redirected_to therapists_url
  end
end
