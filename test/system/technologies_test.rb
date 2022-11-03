require "application_system_test_case"

class TechnologiesTest < ApplicationSystemTestCase
  setup do
    @technology = technologies(:one)
  end

  test "visiting the index" do
    visit technologies_url
    assert_selector "h1", text: "Technologies"
  end

  test "should create technology" do
    visit technologies_url
    click_on "New technology"

    fill_in "Icon", with: @technology.icon
    fill_in "Name", with: @technology.name
    click_on "Create Technology"

    assert_text "Technology was successfully created"
    click_on "Back"
  end

  test "should update Technology" do
    visit technology_url(@technology)
    click_on "Edit this technology", match: :first

    fill_in "Icon", with: @technology.icon
    fill_in "Name", with: @technology.name
    click_on "Update Technology"

    assert_text "Technology was successfully updated"
    click_on "Back"
  end

  test "should destroy Technology" do
    visit technology_url(@technology)
    click_on "Destroy this technology", match: :first

    assert_text "Technology was successfully destroyed"
  end
end
