require "application_system_test_case"

class VisitantesTest < ApplicationSystemTestCase
  setup do
    @visitante = visitantes(:one)
  end

  test "visiting the index" do
    visit visitantes_url
    assert_selector "h1", text: "Visitantes"
  end

  test "creating a Visitante" do
    visit visitantes_url
    click_on "New Visitante"

    click_on "Create Visitante"

    assert_text "Visitante was successfully created"
    click_on "Back"
  end

  test "updating a Visitante" do
    visit visitantes_url
    click_on "Edit", match: :first

    click_on "Update Visitante"

    assert_text "Visitante was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitante" do
    visit visitantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitante was successfully destroyed"
  end
end
