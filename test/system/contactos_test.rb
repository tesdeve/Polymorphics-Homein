require "application_system_test_case"

class ContactosTest < ApplicationSystemTestCase
  setup do
    @contacto = contactos(:one)
  end

  test "visiting the index" do
    visit contactos_url
    assert_selector "h1", text: "Contactos"
  end

  test "creating a Contacto" do
    visit contactos_url
    click_on "New Contacto"

    fill_in "Contactable", with: @contacto.contactable_id
    fill_in "Contactable type", with: @contacto.contactable_type
    fill_in "Email", with: @contacto.email
    fill_in "Telefono", with: @contacto.telefono
    click_on "Create Contacto"

    assert_text "Contacto was successfully created"
    click_on "Back"
  end

  test "updating a Contacto" do
    visit contactos_url
    click_on "Edit", match: :first

    fill_in "Contactable", with: @contacto.contactable_id
    fill_in "Contactable type", with: @contacto.contactable_type
    fill_in "Email", with: @contacto.email
    fill_in "Telefono", with: @contacto.telefono
    click_on "Update Contacto"

    assert_text "Contacto was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacto" do
    visit contactos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacto was successfully destroyed"
  end
end
