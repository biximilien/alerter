module Alerter
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    class_methods do
      def alertable
        send(:include, Alertable)
      end
    end
  end
end

ActiveRecord::Base.send(:include, Alerter::ActiveRecordExtension)
