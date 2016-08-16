require 'rails_helper'

RSpec.describe Alerter do
  describe ApplicationRecord do
    it "includes the 'Alerter' module" do
      expect(ApplicationRecord.included_modules).to include(Alerter)
    end

    it "has the 'alertable' class method" do
      expect(ApplicationRecord).to respond_to(:alertable)
    end
  end

  describe ".alertable" do
    before(:all) { class RecordMock < ApplicationRecord; end }

    it "includes the 'Alertable' module" do
      expect(RecordMock.included_modules).not_to include(Alerter::Alertable)
      RecordMock.alertable
      expect(RecordMock.included_modules).to include(Alerter::Alertable)
      expect(ActiveRecord::Base.included_modules).not_to include(Alerter::Alertable)
    end

  end
end
