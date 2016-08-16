require "alerter/engine"
require "alerter/version"

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

  extend ActiveSupport::Concern

  class_methods do
    def alertable
      send(:include, Alertable)
    end
  end

end
