require 'test_helper'

class NeighborhoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neighborhood = neighborhoods(:one)
  end

  test "should get index" do
    get neighborhoods_url
    assert_response :success
  end

  test "should get new" do
    get new_neighborhood_url
    assert_response :success
  end

  test "should create neighborhood" do
    assert_difference('Neighborhood.count') do
      post neighborhoods_url, params: { neighborhood: { name: @neighborhood.name, x1: @neighborhood.x1, x2: @neighborhood.x2, y1: @neighborhood.y1, y2: @neighborhood.y2 } }
    end

    assert_redirected_to neighborhood_url(Neighborhood.last)
  end

  test "should show neighborhood" do
    get neighborhood_url(@neighborhood)
    assert_response :success
  end

  test "should get edit" do
    get edit_neighborhood_url(@neighborhood)
    assert_response :success
  end

  test "should update neighborhood" do
    patch neighborhood_url(@neighborhood), params: { neighborhood: { name: @neighborhood.name, x1: @neighborhood.x1, x2: @neighborhood.x2, y1: @neighborhood.y1, y2: @neighborhood.y2 } }
    assert_redirected_to neighborhood_url(@neighborhood)
  end

  test "should destroy neighborhood" do
    assert_difference('Neighborhood.count', -1) do
      delete neighborhood_url(@neighborhood)
    end

    assert_redirected_to neighborhoods_url
  end
end
