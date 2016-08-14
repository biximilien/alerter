require "alerter/engine"
require "alerter/version"
require "alerter/active_record_extension"

module Alerter

  autoload :Message, 'alerter/message'
  autoload :Alertable, 'alerter/alertable'

  module Message

    autoload :Base, 'alerter/message/base'
    autoload :Test, 'alerter/message/test'
    autoload :NewMessage, 'alerter/message/new_message'
    autoload :NewRequest, 'alerter/message/new_request'
    autoload :NewFollower, 'alerter/message/new_follower'

  end

end
