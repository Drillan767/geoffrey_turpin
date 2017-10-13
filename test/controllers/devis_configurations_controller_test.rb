require 'test_helper'

class DevisConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devis_configuration = devis_configurations(:one)
  end

  test "should get index" do
    get devis_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_devis_configuration_url
    assert_response :success
  end

  test "should create devis_configuration" do
    assert_difference('DevisConfiguration.count') do
      post devis_configurations_url, params: { devis_configuration: { ratio_facturation: @devis_configuration.ratio_facturation, taux_image: @devis_configuration.taux_image, tva: @devis_configuration.tva } }
    end

    assert_redirected_to devis_configuration_url(DevisConfiguration.last)
  end

  test "should show devis_configuration" do
    get devis_configuration_url(@devis_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_devis_configuration_url(@devis_configuration)
    assert_response :success
  end

  test "should update devis_configuration" do
    patch devis_configuration_url(@devis_configuration), params: { devis_configuration: { ratio_facturation: @devis_configuration.ratio_facturation, taux_image: @devis_configuration.taux_image, tva: @devis_configuration.tva } }
    assert_redirected_to devis_configuration_url(@devis_configuration)
  end

  test "should destroy devis_configuration" do
    assert_difference('DevisConfiguration.count', -1) do
      delete devis_configuration_url(@devis_configuration)
    end

    assert_redirected_to devis_configurations_url
  end
end
