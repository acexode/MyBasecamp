require 'test_helper'

class DisquxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disqux = disquxes(:one)
  end

  test "should get index" do
    get disquxes_url
    assert_response :success
  end

  test "should get new" do
    get new_disqux_url
    assert_response :success
  end

  test "should create disqux" do
    assert_difference('Disqux.count') do
      post disquxes_url, params: { disqux: { title: @disqux.title } }
    end

    assert_redirected_to disqux_url(Disqux.last)
  end

  test "should show disqux" do
    get disqux_url(@disqux)
    assert_response :success
  end

  test "should get edit" do
    get edit_disqux_url(@disqux)
    assert_response :success
  end

  test "should update disqux" do
    patch disqux_url(@disqux), params: { disqux: { title: @disqux.title } }
    assert_redirected_to disqux_url(@disqux)
  end

  test "should destroy disqux" do
    assert_difference('Disqux.count', -1) do
      delete disqux_url(@disqux)
    end

    assert_redirected_to disquxes_url
  end
end
