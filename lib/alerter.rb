require "alerter/engine"
require "alerter/version"

module Alerter

  autoload :Message,    'alerter/message'
  autoload :Alertable,  'alerter/alertable'
  autoload :Alerts,     'alerter/alerts'

  extend ActiveSupport::Concern

  class_methods do
    def alertable
      send(:include, Alertable)
    end
  end

end
