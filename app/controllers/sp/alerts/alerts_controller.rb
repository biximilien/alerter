require_dependency "sp/alerts/application_controller"

module SP::Alerts
  class AlertsController < ApplicationController
    before_action :set_alert, only: [:show, :destroy]

    # GET /alerts
    def index
      @alerts = Alert.all
    end

    # GET /alerts/1
    def show
    end

    # DELETE /alerts/1
    def destroy
      @alert.destroy
      redirect_to alerts_url, notice: 'Alert was successfully destroyed.'
    end

    private
    
      # Use callbacks to share common setup or constraints between actions.
      def set_alert
        @alert = Alert.find(params[:id])
      end

  end
end
