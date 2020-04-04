module Alerter
  module PushNotifications
    class Apnsp8Provider < Provider
      def initialize(
          name = Alerter.config.apnsp8[:name],
          apn_key = File.read(Alerter.config.apnsp8[:apn_key]),
          environment = Alerter.config.apnsp8[:environment],
          apn_key_id = Alerter.config.apnsp8[:apn_key_id],
          team_id = Alerter.config.apnsp8[:team_id],
          bundle_id = Alerter.config.apnsp8[:bundle_id],
          connections = Alerter.config.apnsp8[:connections]
        )

        @app = Rpush::Apnsp8::App.find_by_name(name)

        if @app.nil?
          @app = Rpush::Apnsp8::App.new
          @app.name = name
          @app.apn_key = apn_key
          @app.environment = environment
          @app.team_id = team_id
          @app.bundle_id = bundle_id
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
