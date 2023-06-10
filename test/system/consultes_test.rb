require "application_system_test_case"

class ConsultesTest < ApplicationSystemTestCase
  setup do
    @consulte = consultes(:one)
  end

  test "visiting the index" do
    visit consultes_url
    assert_selector "h1", text: "Consultes"
  end

  test "should create consulte" do
    visit consultes_url
    click_on "New consulte"

    fill_in "Data", with: @consulte.data
    fill_in "Horario", with: @consulte.horario
    click_on "Create Consulte"

    assert_text "Consulte was successfully created"
    click_on "Back"
  end

  test "should update Consulte" do
    visit consulte_url(@consulte)
    click_on "Edit this consulte", match: :first

    fill_in "Data", with: @consulte.data
    fill_in "Horario", with: @consulte.horario
    click_on "Update Consulte"

    assert_text "Consulte was successfully updated"
    click_on "Back"
  end

  test "should destroy Consulte" do
    visit consulte_url(@consulte)
    click_on "Destroy this consulte", match: :first

    assert_text "Consulte was successfully destroyed"
  end
end
