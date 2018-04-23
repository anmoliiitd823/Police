require 'test_helper'

class CriminalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criminal = criminals(:one)
  end

  test "should get index" do
    get criminals_url
    assert_response :success
  end

  test "should get new" do
    get new_criminal_url
    assert_response :success
  end

  test "should create criminal" do
    assert_difference('Criminal.count') do
      post criminals_url, params: { criminal: { address: @criminal.address, age: @criminal.age, description: @criminal.description, first_name: @criminal.first_name, gender: @criminal.gender, height: @criminal.height, identification_mark: @criminal.identification_mark, location_of_crime: @criminal.location_of_crime, second_name: @criminal.second_name, weight: @criminal.weight } }
    end

    assert_redirected_to criminal_url(Criminal.last)
  end

  test "should show criminal" do
    get criminal_url(@criminal)
    assert_response :success
  end

  test "should get edit" do
    get edit_criminal_url(@criminal)
    assert_response :success
  end

  test "should update criminal" do
    patch criminal_url(@criminal), params: { criminal: { address: @criminal.address, age: @criminal.age, description: @criminal.description, first_name: @criminal.first_name, gender: @criminal.gender, height: @criminal.height, identification_mark: @criminal.identification_mark, location_of_crime: @criminal.location_of_crime, second_name: @criminal.second_name, weight: @criminal.weight } }
    assert_redirected_to criminal_url(@criminal)
  end

  test "should destroy criminal" do
    assert_difference('Criminal.count', -1) do
      delete criminal_url(@criminal)
    end

    assert_redirected_to criminals_url
  end
end
