require 'test_helper'

module SP::Alerts
  class AlertsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @alert = sp_alerts_alerts(:one)
    end

    test "should get index" do
      get alerts_url
      assert_response :success
    end

    test "should get new" do
      get new_alert_url
      assert_response :success
    end

    test "should create alert" do
      assert_difference('Alert.count') do
        post alerts_url, params: { alert: { message: @alert.message, source_id: @alert.source_id, source_type: @alert.source_type, source_url: @alert.source_url, target_id: @alert.target_id, target_type: @alert.target_type, target_url: @alert.target_url } }
      end

      assert_redirected_to alert_url(Alert.last)
    end

    test "should show alert" do
      get alert_url(@alert)
      assert_response :success
    end

    test "should get edit" do
      get edit_alert_url(@alert)
      assert_response :success
    end

    test "should update alert" do
      patch alert_url(@alert), params: { alert: { message: @alert.message, source_id: @alert.source_id, source_type: @alert.source_type, source_url: @alert.source_url, target_id: @alert.target_id, target_type: @alert.target_type, target_url: @alert.target_url } }
      assert_redirected_to alert_url(@alert)
    end

    test "should destroy alert" do
      assert_difference('Alert.count', -1) do
        delete alert_url(@alert)
      end

      assert_redirected_to alerts_url
    end
  end
end
