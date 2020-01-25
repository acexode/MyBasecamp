require "application_system_test_case"

class DisquxesTest < ApplicationSystemTestCase
  setup do
    @disqux = disquxes(:one)
  end

  test "visiting the index" do
    visit disquxes_url
    assert_selector "h1", text: "Disquxes"
  end

  test "creating a Disqux" do
    visit disquxes_url
    click_on "New Disqux"

    fill_in "Title", with: @disqux.title
    click_on "Create Disqux"

    assert_text "Disqux was successfully created"
    click_on "Back"
  end

  test "updating a Disqux" do
    visit disquxes_url
    click_on "Edit", match: :first

    fill_in "Title", with: @disqux.title
    click_on "Update Disqux"

    assert_text "Disqux was successfully updated"
    click_on "Back"
  end

  test "destroying a Disqux" do
    visit disquxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disqux was successfully destroyed"
  end
end
