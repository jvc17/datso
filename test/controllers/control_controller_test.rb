require 'test_helper'

class ControlControllerTest < ActionDispatch::IntegrationTest
  test "should get insertar" do
    get control_insertar_url
    assert_response :success
  end

  test "should get buscar" do
    get control_buscar_url
    assert_response :success
  end

end
