# frozen_string_literal: true

module Alerter
  class AlertMailer < ApplicationMailer
    def alert_email(user, alert)
      @user = user
      @alert = alert
      mail(to: @user.email, subject: subject, body: body)
    end

    private

    def subject
      alert.message.subject
    end

    def body
      alert.message.body
    end
  end
end
