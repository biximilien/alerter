require "inflections"
require "sp/alerts/engine"
require "sp/alerts/version"
require "sp/alerts/active_record_extension"

module SP
  module Alerts

    autoload :Message, 'sp/alerts/message'
    autoload :Alertable, 'sp/alerts/alertable'

    module Messages

      autoload :Base, 'sp/alerts/messages/base'
      autoload :Test, 'sp/alerts/messages/test'
      autoload :NewMessage, 'sp/alerts/messages/new_message'
      autoload :NewRequest, 'sp/alerts/messages/new_request'
      autoload :NewFollower, 'sp/alerts/messages/new_follower'

    end
  end
end
