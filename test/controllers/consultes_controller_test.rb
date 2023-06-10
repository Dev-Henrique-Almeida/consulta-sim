require "test_helper"

class ConsultesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulte = consultes(:one)
  end

  test "should get index" do
    get consultes_url
    assert_response :success
  end

  test "should get new" do
    get new_consulte_url
    assert_response :success
  end

  test "should create consulte" do
    assert_difference("Consulte.count") do
      post consultes_url, params: { consulte: { data: @consulte.data, horario: @consulte.horario } }
    end

    assert_redirected_to consulte_url(Consulte.last)
  end

  test "should show consulte" do
    get consulte_url(@consulte)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulte_url(@consulte)
    assert_response :success
  end

  test "should update consulte" do
    patch consulte_url(@consulte), params: { consulte: { data: @consulte.data, horario: @consulte.horario } }
    assert_redirected_to consulte_url(@consulte)
  end

  test "should destroy consulte" do
    assert_difference("Consulte.count", -1) do
      delete consulte_url(@consulte)
    end

    assert_redirected_to consultes_url
  end
end
