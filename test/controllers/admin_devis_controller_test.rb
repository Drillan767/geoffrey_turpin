require 'test_helper'

class AdminDevisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_devis_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_devis_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_devis_destroy_url
    assert_response :success
  end

end
