require 'rails_helper'

RSpec.describe Alerter::Alertable do
  subject {FactoryGirl.create(:model_mock)}

  describe "#alert" do
    it { should respond_to? :alert }
    it { expect(subject).to respond_to :alert }

    it "creates an alert" do
      expect{
        subject.alert({
          source: FactoryGirl.create(:model_mock),
          message: :test,
          object: nil})
      }.to change(Alerter::Alert, :count).by(1)
    end
  end

  describe "#alerts" do
    it { should respond_to? :alerts }
    it { expect(subject).to respond_to :alerts }

    it "returns the alerts for associated resource" do
      @source = FactoryGirl.create(:model_mock)
      @alerts = FactoryGirl.create_list(:alert, 10, target: subject, source: @source)
      expect(subject.alerts).to match_array(@alerts)
    end
  end
end
