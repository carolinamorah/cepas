require 'test_helper'

class WinestrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winestrain = winestrains(:one)
  end

  test "should get index" do
    get winestrains_url
    assert_response :success
  end

  test "should get new" do
    get new_winestrain_url
    assert_response :success
  end

  test "should create winestrain" do
    assert_difference('Winestrain.count') do
      post winestrains_url, params: { winestrain: { percent: @winestrain.percent, strain_id: @winestrain.strain_id, wine_id: @winestrain.wine_id } }
    end

    assert_redirected_to winestrain_url(Winestrain.last)
  end

  test "should show winestrain" do
    get winestrain_url(@winestrain)
    assert_response :success
  end

  test "should get edit" do
    get edit_winestrain_url(@winestrain)
    assert_response :success
  end

  test "should update winestrain" do
    patch winestrain_url(@winestrain), params: { winestrain: { percent: @winestrain.percent, strain_id: @winestrain.strain_id, wine_id: @winestrain.wine_id } }
    assert_redirected_to winestrain_url(@winestrain)
  end

  test "should destroy winestrain" do
    assert_difference('Winestrain.count', -1) do
      delete winestrain_url(@winestrain)
    end

    assert_redirected_to winestrains_url
  end
end
