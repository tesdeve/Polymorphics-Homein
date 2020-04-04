require 'test_helper'

class DetallespersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detallespersona = detallespersonas(:one)
  end

  test "should get index" do
    get detallespersonas_url
    assert_response :success
  end

  test "should get new" do
    get new_detallespersona_url
    assert_response :success
  end

  test "should create detallespersona" do
    assert_difference('Detallespersona.count') do
      post detallespersonas_url, params: { detallespersona: { apellido: @detallespersona.apellido, cedula: @detallespersona.cedula, edad: @detallespersona.edad, huella_digital: @detallespersona.huella_digital, nombre: @detallespersona.nombre, personable_id: @detallespersona.personable_id, personable_type: @detallespersona.personable_type } }
    end

    assert_redirected_to detallespersona_url(Detallespersona.last)
  end

  test "should show detallespersona" do
    get detallespersona_url(@detallespersona)
    assert_response :success
  end

  test "should get edit" do
    get edit_detallespersona_url(@detallespersona)
    assert_response :success
  end

  test "should update detallespersona" do
    patch detallespersona_url(@detallespersona), params: { detallespersona: { apellido: @detallespersona.apellido, cedula: @detallespersona.cedula, edad: @detallespersona.edad, huella_digital: @detallespersona.huella_digital, nombre: @detallespersona.nombre, personable_id: @detallespersona.personable_id, personable_type: @detallespersona.personable_type } }
    assert_redirected_to detallespersona_url(@detallespersona)
  end

  test "should destroy detallespersona" do
    assert_difference('Detallespersona.count', -1) do
      delete detallespersona_url(@detallespersona)
    end

    assert_redirected_to detallespersonas_url
  end
end
