module Alerter::ActiveRecordExtension
  extend ActiveSupport::Concern

  class_methods do
    def alertable
      send(:include, Alerter::Alertable)
    end
  end
end

ActiveRecord::Base.send(:include, Alerter::ActiveRecordExtension)
