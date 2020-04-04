require "application_system_test_case"

class ResidentesTest < ApplicationSystemTestCase
  setup do
    @residente = residentes(:one)
  end

  test "visiting the index" do
    visit residentes_url
    assert_selector "h1", text: "Residentes"
  end

  test "creating a Residente" do
    visit residentes_url
    click_on "New Residente"

    check "Principal" if @residente.principal
    click_on "Create Residente"

    assert_text "Residente was successfully created"
    click_on "Back"
  end

  test "updating a Residente" do
    visit residentes_url
    click_on "Edit", match: :first

    check "Principal" if @residente.principal
    click_on "Update Residente"

    assert_text "Residente was successfully updated"
    click_on "Back"
  end

  test "destroying a Residente" do
    visit residentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residente was successfully destroyed"
  end
end
