require "application_system_test_case"

class PropertsTest < ApplicationSystemTestCase
  setup do
    @propert = properts(:one)
  end

  test "visiting the index" do
    visit properts_url
    assert_selector "h1", text: "Properts"
  end

  test "creating a Propert" do
    visit properts_url
    click_on "New Propert"

    fill_in "Address", with: @propert.address
    fill_in "Ago", with: @propert.ago
    fill_in "Remarks", with: @propert.remarks
    fill_in "Rent", with: @propert.rent
    fill_in "Title", with: @propert.title
    click_on "Create Propert"

    assert_text "Propert was successfully created"
    click_on "Back"
  end

  test "updating a Propert" do
    visit properts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @propert.address
    fill_in "Ago", with: @propert.ago
    fill_in "Remarks", with: @propert.remarks
    fill_in "Rent", with: @propert.rent
    fill_in "Title", with: @propert.title
    click_on "Update Propert"

    assert_text "Propert was successfully updated"
    click_on "Back"
  end

  test "destroying a Propert" do
    visit properts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Propert was successfully destroyed"
  end
end
