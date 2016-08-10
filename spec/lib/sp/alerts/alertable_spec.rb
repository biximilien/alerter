require 'rails_helper'

RSpec.describe SP::Alerts::Alertable do
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
      }.to change(SP::Alerts::Alert, :count).by(1)
    end
  end

  describe "#alerts" do
    it { should respond_to? :alerts }
    it { expect(subject).to respond_to :alerts }
  end
end
