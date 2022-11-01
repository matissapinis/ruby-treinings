require "application_system_test_case"

class ResponsesTest < ApplicationSystemTestCase
  setup do
    @response = responses(:one)
  end

  test "visiting the index" do
    visit responses_url
    assert_selector "h1", text: "Responses"
  end

  test "should create response" do
    visit responses_url
    click_on "New response"

    fill_in "Dem 1", with: @response.dem_1
    fill_in "Dem 2", with: @response.dem_2
    fill_in "Hb a 1 1", with: @response.hb_a_1_1
    fill_in "Hb a 2 1", with: @response.hb_a_2_1
    fill_in "Hb a 3 1", with: @response.hb_a_3_1
    fill_in "Id", with: @response.id
    fill_in "Sr 1", with: @response.sr_1
    fill_in "Undergrad continent", with: @response.undergrad_continent
    fill_in "Vb 1 1", with: @response.vb_1_1
    fill_in "Vb 1 2", with: @response.vb_1_2
    fill_in "Vb 1 3", with: @response.vb_1_3
    fill_in "Vb 1 4", with: @response.vb_1_4
    fill_in "Vb 1 5", with: @response.vb_1_5
    click_on "Create Response"

    assert_text "Response was successfully created"
    click_on "Back"
  end

  test "should update Response" do
    visit response_url(@response)
    click_on "Edit this response", match: :first

    fill_in "Dem 1", with: @response.dem_1
    fill_in "Dem 2", with: @response.dem_2
    fill_in "Hb a 1 1", with: @response.hb_a_1_1
    fill_in "Hb a 2 1", with: @response.hb_a_2_1
    fill_in "Hb a 3 1", with: @response.hb_a_3_1
    fill_in "Id", with: @response.id
    fill_in "Sr 1", with: @response.sr_1
    fill_in "Undergrad continent", with: @response.undergrad_continent
    fill_in "Vb 1 1", with: @response.vb_1_1
    fill_in "Vb 1 2", with: @response.vb_1_2
    fill_in "Vb 1 3", with: @response.vb_1_3
    fill_in "Vb 1 4", with: @response.vb_1_4
    fill_in "Vb 1 5", with: @response.vb_1_5
    click_on "Update Response"

    assert_text "Response was successfully updated"
    click_on "Back"
  end

  test "should destroy Response" do
    visit response_url(@response)
    click_on "Destroy this response", match: :first

    assert_text "Response was successfully destroyed"
  end
end
