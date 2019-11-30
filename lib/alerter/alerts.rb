# frozen_string_literal: true

module Alerter
  class Alerts
    def self.define
      yield self
    end

    def self.[](key)
      key = key.to_s

      if messages.key? key
        messages[key]
      else
        if key.include?('.')
          s, k = key.split('.')
          s = "#{s}_alerts".camelize.constantize
          if _messages.key? s
            _messages[s][k]
          else
            raise "missing key: #{s} (subkey: #{k}) for #{self}"
          end
        else
          raise "cannot handle key: #{key} for #{self}"
        end
      end
    end

    def self.message(key, &block)
      key = key.to_s
      messages[key] = block
    end

    private

    def self._messages
      @@messages ||= {}
    end

    def self.messages
      _messages[self] ||= {}
    end
  end
end
