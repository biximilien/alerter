module Alerter
  class Message

    attr_accessor :target, :source, :object

    def initialize(target:, source:, object:, message:)
      @target = target
      @source = source
      @object = object
      @message = Alerts[message]
    end

    def message
      @message.call(@target, @source, @object)
    end

    alias_method :to_s, :message

  end
end
