require "application_system_test_case"

class PropiedadsTest < ApplicationSystemTestCase
  setup do
    @propiedad = propiedads(:one)
  end

  test "visiting the index" do
    visit propiedads_url
    assert_selector "h1", text: "Propiedads"
  end

  test "creating a Propiedad" do
    visit propiedads_url
    click_on "New Propiedad"

    fill_in "Conjunto", with: @propiedad.conjunto_id
    fill_in "Edificio", with: @propiedad.edificio
    fill_in "Identificador", with: @propiedad.identificador
    fill_in "Parqueaderos", with: @propiedad.parqueaderos
    fill_in "Propiedad type", with: @propiedad.propiedad_type
    fill_in "Residente", with: @propiedad.residente_id
    click_on "Create Propiedad"

    assert_text "Propiedad was successfully created"
    click_on "Back"
  end

  test "updating a Propiedad" do
    visit propiedads_url
    click_on "Edit", match: :first

    fill_in "Conjunto", with: @propiedad.conjunto_id
    fill_in "Edificio", with: @propiedad.edificio
    fill_in "Identificador", with: @propiedad.identificador
    fill_in "Parqueaderos", with: @propiedad.parqueaderos
    fill_in "Propiedad type", with: @propiedad.propiedad_type
    fill_in "Residente", with: @propiedad.residente_id
    click_on "Update Propiedad"

    assert_text "Propiedad was successfully updated"
    click_on "Back"
  end

  test "destroying a Propiedad" do
    visit propiedads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Propiedad was successfully destroyed"
  end
end
