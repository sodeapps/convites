require 'test_helper'

class ConfirmarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confirmar = confirmars(:one)
  end

  test "should get index" do
    get confirmars_url
    assert_response :success
  end

  test "should get new" do
    get new_confirmar_url
    assert_response :success
  end

  test "should create confirmar" do
    assert_difference('Confirmar.count') do
      post confirmars_url, params: { confirmar: { idade: @confirmar.idade, nome: @confirmar.nome, telefone: @confirmar.telefone } }
    end

    assert_redirected_to confirmar_url(Confirmar.last)
  end

  test "should show confirmar" do
    get confirmar_url(@confirmar)
    assert_response :success
  end

  test "should get edit" do
    get edit_confirmar_url(@confirmar)
    assert_response :success
  end

  test "should update confirmar" do
    patch confirmar_url(@confirmar), params: { confirmar: { idade: @confirmar.idade, nome: @confirmar.nome, telefone: @confirmar.telefone } }
    assert_redirected_to confirmar_url(@confirmar)
  end

  test "should destroy confirmar" do
    assert_difference('Confirmar.count', -1) do
      delete confirmar_url(@confirmar)
    end

    assert_redirected_to confirmars_url
  end
end
