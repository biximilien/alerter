require 'rails_helper'

RSpec.describe SP::Alerts::ActiveRecordExtension do

  describe ActiveRecord::Base do
    it "includes the 'ActiveRecordExtension' module" do
      expect(ActiveRecord::Base.included_modules).to include(SP::Alerts::ActiveRecordExtension)
    end

    it "has the 'alertable' class method" do
      expect(ActiveRecord::Base).to respond_to(:alertable)
    end
  end

  describe ".alertable" do
    before(:all) { class RecordMock < ActiveRecord::Base; end }

    it "includes the 'Alertable' module" do
      expect(RecordMock.included_modules).not_to include(SP::Alerts::Alertable)
      RecordMock.alertable
      expect(RecordMock.included_modules).to include(SP::Alerts::Alertable)
      expect(ActiveRecord::Base.included_modules).not_to include(SP::Alerts::Alertable)
    end

  end
end
