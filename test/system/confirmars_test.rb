require "application_system_test_case"

class ConfirmarsTest < ApplicationSystemTestCase
  setup do
    @confirmar = confirmars(:one)
  end

  test "visiting the index" do
    visit confirmars_url
    assert_selector "h1", text: "Confirmars"
  end

  test "creating a Confirmar" do
    visit confirmars_url
    click_on "New Confirmar"

    fill_in "Idade", with: @confirmar.idade
    fill_in "Nome", with: @confirmar.nome
    fill_in "Telefone", with: @confirmar.telefone
    click_on "Create Confirmar"

    assert_text "Confirmar was successfully created"
    click_on "Back"
  end

  test "updating a Confirmar" do
    visit confirmars_url
    click_on "Edit", match: :first

    fill_in "Idade", with: @confirmar.idade
    fill_in "Nome", with: @confirmar.nome
    fill_in "Telefone", with: @confirmar.telefone
    click_on "Update Confirmar"

    assert_text "Confirmar was successfully updated"
    click_on "Back"
  end

  test "destroying a Confirmar" do
    visit confirmars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Confirmar was successfully destroyed"
  end
end
