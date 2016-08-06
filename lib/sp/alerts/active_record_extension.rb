module SP::Alerts::ActiveRecordExtension
  extend ActiveSupport::Concern

  class_methods do
    def alertable
      send(:include, SP::Alerts::Alertable)
    end
  end
end

ActiveRecord::Base.send(:include, SP::Alerts::ActiveRecordExtension)
