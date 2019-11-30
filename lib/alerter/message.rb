# frozen_string_literal: true

module Alerter
  class Message
    attr_accessor :source, :target, :object, :key

    def self.for(alert)
      new(alert.source, alert.target, alert.object, alert.key)
    end

    def initialize(source, target, object, key)
      @source = source
      @target = target
      @object = object
      @key = key
    end

    def message
      Alerts[@key].call(@source, @target, @object)
    end

    alias to_s message
  end
end
