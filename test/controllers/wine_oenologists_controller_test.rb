require 'test_helper'

class WineOenologistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_oenologist = wine_oenologists(:one)
  end

  test "should get index" do
    get wine_oenologists_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_oenologist_url
    assert_response :success
  end

  test "should create wine_oenologist" do
    assert_difference('WineOenologist.count') do
      post wine_oenologists_url, params: { wine_oenologist: { oenologist_id: @wine_oenologist.oenologist_id, wine_id: @wine_oenologist.wine_id } }
    end

    assert_redirected_to wine_oenologist_url(WineOenologist.last)
  end

  test "should show wine_oenologist" do
    get wine_oenologist_url(@wine_oenologist)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_oenologist_url(@wine_oenologist)
    assert_response :success
  end

  test "should update wine_oenologist" do
    patch wine_oenologist_url(@wine_oenologist), params: { wine_oenologist: { oenologist_id: @wine_oenologist.oenologist_id, wine_id: @wine_oenologist.wine_id } }
    assert_redirected_to wine_oenologist_url(@wine_oenologist)
  end

  test "should destroy wine_oenologist" do
    assert_difference('WineOenologist.count', -1) do
      delete wine_oenologist_url(@wine_oenologist)
    end

    assert_redirected_to wine_oenologists_url
  end
end
