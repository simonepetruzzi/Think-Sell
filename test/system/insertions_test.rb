require "application_system_test_case"

class InsertionsTest < ApplicationSystemTestCase
  setup do
    @insertion = insertions(:one)
  end

  test "visiting the index" do
    visit insertions_url
    assert_selector "h1", text: "Insertions"
  end

  test "creating a Insertion" do
    visit insertions_url
    click_on "New Insertion"

    fill_in "Title", with: @insertion.title
    fill_in "User", with: @insertion.user_id
    fill_in "Views", with: @insertion.views
    click_on "Create Insertion"

    assert_text "Insertion was successfully created"
    click_on "Back"
  end

  test "updating a Insertion" do
    visit insertions_url
    click_on "Edit", match: :first

    fill_in "Title", with: @insertion.title
    fill_in "User", with: @insertion.user_id
    fill_in "Views", with: @insertion.views
    click_on "Update Insertion"

    assert_text "Insertion was successfully updated"
    click_on "Back"
  end

  test "destroying a Insertion" do
    visit insertions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insertion was successfully destroyed"
  end
end
