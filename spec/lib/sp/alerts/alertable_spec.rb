require 'rails_helper'

RSpec.describe SP::Alerts::Alertable do

  describe "#alert" do
    subject { FactoryGirl.create(:model_mock) }

    it { should respond_to? :alert }

    it "creates an alert" do
      expect{
        subject.alert({
          source: FactoryGirl.create(:model_mock),
          message: :test,
          object: nil})
      }.to change(SP::Alerts::Alert, :count).by(1)
    end
  end

  describe "#alerts" do
    it "returns the alerts targetting the resource" do
      skip
    end
  end
end
