module Alerter
  module PushNotifications
    class Provider
      def self.get(provider)
        case provider
        when :apns
          ApnsProvider.new
        when :apnsp8
          Apnsp8Provider.new
        when :apnsp2
          Apnsp2Provider.new
        when :gcm
          GcmProvider.new
        when :adm
          AdmProvider.new
        when :wpns
          WpnsProvider.new
        when :wns
          WnsProvider.new
        when :pushy
          PushyProvider.new
        else
          raise 'unsupported provider'
        end
      end
    end
  end
end
