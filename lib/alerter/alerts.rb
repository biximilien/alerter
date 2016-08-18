module Alerter
  class Alerts

    def self.[] key
      messages[key]
    end

    def self.message key, &block
      messages[key] = block
    end

    private

      def self.messages
        @@messages ||= {}
      end

  end
end
