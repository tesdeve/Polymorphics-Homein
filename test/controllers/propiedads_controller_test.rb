require 'test_helper'

class PropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propiedad = propiedads(:one)
  end

  test "should get index" do
    get propiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_propiedad_url
    assert_response :success
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post propiedads_url, params: { propiedad: { conjunto_id: @propiedad.conjunto_id, edificio: @propiedad.edificio, identificador: @propiedad.identificador, parqueaderos: @propiedad.parqueaderos, propiedad_type: @propiedad.propiedad_type, residente_id: @propiedad.residente_id } }
    end

    assert_redirected_to propiedad_url(Propiedad.last)
  end

  test "should show propiedad" do
    get propiedad_url(@propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_propiedad_url(@propiedad)
    assert_response :success
  end

  test "should update propiedad" do
    patch propiedad_url(@propiedad), params: { propiedad: { conjunto_id: @propiedad.conjunto_id, edificio: @propiedad.edificio, identificador: @propiedad.identificador, parqueaderos: @propiedad.parqueaderos, propiedad_type: @propiedad.propiedad_type, residente_id: @propiedad.residente_id } }
    assert_redirected_to propiedad_url(@propiedad)
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete propiedad_url(@propiedad)
    end

    assert_redirected_to propiedads_url
  end
end
