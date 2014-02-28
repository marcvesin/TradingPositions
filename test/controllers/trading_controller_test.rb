require 'test_helper'

class TradingControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get trades" do
    get :trades
    assert_response :success
  end

  test "should get manager" do
    get :manager
    assert_response :success
  end

end
