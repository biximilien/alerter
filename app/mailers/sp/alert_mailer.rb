module SP::Alerts
  class AlertMailer < ApplicationMailer

    def alert_email(user, alert)
      @user = user
      @alert = alert
      mail(to: @user.email, subject: subject)
    end

    private

      def subject
        nil #TODO
      end

  end
end
