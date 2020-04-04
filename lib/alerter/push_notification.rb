module Alerter
  class PushNotification

    def initialize(provider)
      @provider = PushNotifications::Provider.get(provider)
    end

    def notify(user, message, **args)
      @provider.notify(user, message, **args)
    end

  end
end
