module Alerter
  module PushNotifications
    class GcmProvider < Provider
      def initialize(
          name = Alerter.config.gcm[:name],
          auth_key = Alerter.config.gcm[:auth_key],
          connections = Alerter.config.gcm[:connections]
        )

        @app = Rpush::Gcm::App.find_by_name(name)

        if @app.nil?
          @app = Rpush::Gcm::App.new
          @app.name = name
          @app.auth_key = auth_key
          @app.connections = connections
          @app.save!
        end
      end

      def notify(user, message, **args)
        n = Rpush::Gcm::Notification.new
        n.app = @app
        n.registration_ids = [user.registration_id]
        n.data = { message: message }
        n.save!
      end
    end
  end
end
