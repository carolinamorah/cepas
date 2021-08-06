require "application_system_test_case"

class WinestrainsTest < ApplicationSystemTestCase
  setup do
    @winestrain = winestrains(:one)
  end

  test "visiting the index" do
    visit winestrains_url
    assert_selector "h1", text: "Winestrains"
  end

  test "creating a Winestrain" do
    visit winestrains_url
    click_on "New Winestrain"

    fill_in "Percent", with: @winestrain.percent
    fill_in "Strain", with: @winestrain.strain_id
    fill_in "Wine", with: @winestrain.wine_id
    click_on "Create Winestrain"

    assert_text "Winestrain was successfully created"
    click_on "Back"
  end

  test "updating a Winestrain" do
    visit winestrains_url
    click_on "Edit", match: :first

    fill_in "Percent", with: @winestrain.percent
    fill_in "Strain", with: @winestrain.strain_id
    fill_in "Wine", with: @winestrain.wine_id
    click_on "Update Winestrain"

    assert_text "Winestrain was successfully updated"
    click_on "Back"
  end

  test "destroying a Winestrain" do
    visit winestrains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Winestrain was successfully destroyed"
  end
end
