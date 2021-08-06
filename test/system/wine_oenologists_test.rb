require "application_system_test_case"

class WineOenologistsTest < ApplicationSystemTestCase
  setup do
    @wine_oenologist = wine_oenologists(:one)
  end

  test "visiting the index" do
    visit wine_oenologists_url
    assert_selector "h1", text: "Wine Oenologists"
  end

  test "creating a Wine oenologist" do
    visit wine_oenologists_url
    click_on "New Wine Oenologist"

    fill_in "Oenologist", with: @wine_oenologist.oenologist_id
    fill_in "Wine", with: @wine_oenologist.wine_id
    click_on "Create Wine oenologist"

    assert_text "Wine oenologist was successfully created"
    click_on "Back"
  end

  test "updating a Wine oenologist" do
    visit wine_oenologists_url
    click_on "Edit", match: :first

    fill_in "Oenologist", with: @wine_oenologist.oenologist_id
    fill_in "Wine", with: @wine_oenologist.wine_id
    click_on "Update Wine oenologist"

    assert_text "Wine oenologist was successfully updated"
    click_on "Back"
  end

  test "destroying a Wine oenologist" do
    visit wine_oenologists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wine oenologist was successfully destroyed"
  end
end
