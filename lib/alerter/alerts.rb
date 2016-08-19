module Alerter
  class Alerts

    def self.define
      yield self
    end

    def self.[] key
      key = key.to_s
      if self == Alerts
        if messages.key? key
          messages[key]
        else
          if key.include?('.')
            s, k = key.split('.')
            s = "#{s}_alerts".camelize.constantize
            if messages.key? s
              messages[s][k]
            else
              raise "missing key: #{s} (subkey: #{k}) for #{self}"
            end
          else
            raise "cannot handle key: #{key} for #{self}"
          end
        end
      else
        messages_for_self[key]
      end
    end

    def self.message key, &block
      key = key.to_s
      if self == Alerts
        messages[key] = block
      else
        messages_for_self[key] = block
      end
    end

    private

      def self.messages_for_self
        messages[self] ||= {}
      end

      def self.messages
        @@messages ||= {}
      end

  end
end
