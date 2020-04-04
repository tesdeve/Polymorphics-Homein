require "application_system_test_case"

class DetallespersonasTest < ApplicationSystemTestCase
  setup do
    @detallespersona = detallespersonas(:one)
  end

  test "visiting the index" do
    visit detallespersonas_url
    assert_selector "h1", text: "Detallespersonas"
  end

  test "creating a Detallespersona" do
    visit detallespersonas_url
    click_on "New Detallespersona"

    fill_in "Apellido", with: @detallespersona.apellido
    fill_in "Cedula", with: @detallespersona.cedula
    fill_in "Edad", with: @detallespersona.edad
    fill_in "Huella digital", with: @detallespersona.huella_digital
    fill_in "Nombre", with: @detallespersona.nombre
    fill_in "Personable", with: @detallespersona.personable_id
    fill_in "Personable type", with: @detallespersona.personable_type
    click_on "Create Detallespersona"

    assert_text "Detallespersona was successfully created"
    click_on "Back"
  end

  test "updating a Detallespersona" do
    visit detallespersonas_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @detallespersona.apellido
    fill_in "Cedula", with: @detallespersona.cedula
    fill_in "Edad", with: @detallespersona.edad
    fill_in "Huella digital", with: @detallespersona.huella_digital
    fill_in "Nombre", with: @detallespersona.nombre
    fill_in "Personable", with: @detallespersona.personable_id
    fill_in "Personable type", with: @detallespersona.personable_type
    click_on "Update Detallespersona"

    assert_text "Detallespersona was successfully updated"
    click_on "Back"
  end

  test "destroying a Detallespersona" do
    visit detallespersonas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detallespersona was successfully destroyed"
  end
end
