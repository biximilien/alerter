module Alerter
  RSpec.describe Alerts do

    before(:all) { Alerts.message(:test){ "This is a test." } }

    describe ".[]" do
      it "fetches an alert message" do
        expect(Alerts[:test]).to be_a(Proc)
      end
    end

    describe ".message" do
      it "defines a message" do
        expect(Alerts[:test].call).to eq("This is a test.")
      end
    end
  end
end
