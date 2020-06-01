require 'test_helper'

class ConjuntosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conjunto = conjuntos(:one)
  end

  test "should get index" do
    get conjuntos_url
    assert_response :success
  end

  test "should get new" do
    get new_conjunto_url
    assert_response :success
  end

  test "should create conjunto" do
    assert_difference('Conjunto.count') do
      post conjuntos_url, params: { conjunto: { nombre: @conjunto.nombre } }
    end

    assert_redirected_to conjunto_url(Conjunto.last)
  end

  test "should show conjunto" do
    get conjunto_url(@conjunto)
    assert_response :success
  end

  test "should get edit" do
    get edit_conjunto_url(@conjunto)
    assert_response :success
  end

  test "should update conjunto" do
    patch conjunto_url(@conjunto), params: { conjunto: { nombre: @conjunto.nombre } }
    assert_redirected_to conjunto_url(@conjunto)
  end

  test "should destroy conjunto" do
    assert_difference('Conjunto.count', -1) do
      delete conjunto_url(@conjunto)
    end

    assert_redirected_to conjuntos_url
  end
end
