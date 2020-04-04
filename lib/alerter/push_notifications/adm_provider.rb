module Alerter
  module PushNotifications
    class AdmProvider < Provider
      def initialize(
          name = Alerter.config.adm[:name],
          client_id = Alerter.config.adm[:client_id],
          client_secret = Alerter.config.adm[:client_secret],
          connections = Alerter.config.adm[:connections]
        )

        @app = Rpush::Adm::App.find_by_name(name)

        if @app.nil?
          @app = Rpush::Adm::App.new
          @app.name = name
          @app.client_id = client_id
          @app.client_secret = client_secret
          @app.connections = connections
          @app.save!
        end
      end

      def notify(user, message, **args)
        n = Rpush::Adm::Notification.new
        n.app = @app
        n.registration_ids = [user.registration_id]
        n.data = { message: message }
        n.save!
      end
    end
  end
end
