require "test_helper"

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response = responses(:one)
  end

  test "should get index" do
    get responses_url
    assert_response :success
  end

  test "should get new" do
    get new_response_url
    assert_response :success
  end

  test "should create response" do
    assert_difference("Response.count") do
      post responses_url, params: { response: { dem_1: @response.dem_1, dem_2: @response.dem_2, hb_a_1_1: @response.hb_a_1_1, hb_a_2_1: @response.hb_a_2_1, hb_a_3_1: @response.hb_a_3_1, id: @response.id, sr_1: @response.sr_1, undergrad_continent: @response.undergrad_continent, vb_1_1: @response.vb_1_1, vb_1_2: @response.vb_1_2, vb_1_3: @response.vb_1_3, vb_1_4: @response.vb_1_4, vb_1_5: @response.vb_1_5 } }
    end

    assert_redirected_to response_url(Response.last)
  end

  test "should show response" do
    get response_url(@response)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_url(@response)
    assert_response :success
  end

  test "should update response" do
    patch response_url(@response), params: { response: { dem_1: @response.dem_1, dem_2: @response.dem_2, hb_a_1_1: @response.hb_a_1_1, hb_a_2_1: @response.hb_a_2_1, hb_a_3_1: @response.hb_a_3_1, id: @response.id, sr_1: @response.sr_1, undergrad_continent: @response.undergrad_continent, vb_1_1: @response.vb_1_1, vb_1_2: @response.vb_1_2, vb_1_3: @response.vb_1_3, vb_1_4: @response.vb_1_4, vb_1_5: @response.vb_1_5 } }
    assert_redirected_to response_url(@response)
  end

  test "should destroy response" do
    assert_difference("Response.count", -1) do
      delete response_url(@response)
    end

    assert_redirected_to responses_url
  end
end
