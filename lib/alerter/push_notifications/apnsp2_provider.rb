module Alerter
  module PushNotifications
    class Apnsp2Provider < Provider
      def initialize(
          name = Alerter.config.apnsp2[:name],
          apn_key = File.read(Alerter.config.apnsp2[:apn_key]),
          environment = Alerter.config.apnsp2[:environment],
          apn_key_id = Alerter.config.apnsp2[:apn_key_id],
          team_id = Alerter.config.apnsp2[:team_id],
          bundle_id = Alerter.config.apnsp2[:bundle_id],
          connections = Alerter.config.apnsp2[:connections]
        )

        @app = Rpush::Apnsp2::App.find_by_name(name)

        if @app.nil?
          @app = Rpush::Apnsp2::App.new
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
