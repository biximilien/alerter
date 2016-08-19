module Alerter
  RSpec.describe Alerts do

    before(:all) do
      Alerts.define do |alerts|
        @block = alerts.message(:test) { "This is a test." }
      end
    end

    describe ".[]" do
      it "fetches an alert message" do
        expect(Alerts[:test]).not_to be_nil
        expect(Alerts[:test]).to be_a(Proc)
        expect(Alerts[:test].call).to eq("This is a test.")
      end
    end

    describe ".message" do
      it "defines a message" do
        expect(Alerts.send(:messages)).to include('test')
        expect(Alerts['test']).to be(@block)
      end
    end
  end
end
