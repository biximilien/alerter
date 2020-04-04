module Alerter
  module PushNotifications
    class ApnsProvider < Provider
      def initialize(
          name = Alerter.config.apns[:name],
          certificate = File.read(Alerter.config.apns[:certificate]),
          environment = Alerter.config.apns[:environment],
          password = Alerter.config.apns[:password],
          connections = Alerter.config.apns[:connections]
        )

        @app = Rpush::Apns::App.find_by_name(name)

        if @app.nil?
          @app = Rpush::Apns::App.new
          @app.name = name
          @app.certificate = certificate
          @app.environment = environment
          @app.password = password
          @app.connections = connections
          @app.save!
        end
      end

      def notify(user, message, **args)
        n = Rpush::Apns::Notification.new
        n.app = @app
        n.device_token = user.device_token
        n.alert = message
        n.data = args[:data] ||= {}
        n.save!
      end
    end
  end
end
