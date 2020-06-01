require "application_system_test_case"

class ConjuntosTest < ApplicationSystemTestCase
  setup do
    @conjunto = conjuntos(:one)
  end

  test "visiting the index" do
    visit conjuntos_url
    assert_selector "h1", text: "Conjuntos"
  end

  test "creating a Conjunto" do
    visit conjuntos_url
    click_on "New Conjunto"

    fill_in "Nombre", with: @conjunto.nombre
    click_on "Create Conjunto"

    assert_text "Conjunto was successfully created"
    click_on "Back"
  end

  test "updating a Conjunto" do
    visit conjuntos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @conjunto.nombre
    click_on "Update Conjunto"

    assert_text "Conjunto was successfully updated"
    click_on "Back"
  end

  test "destroying a Conjunto" do
    visit conjuntos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conjunto was successfully destroyed"
  end
end
