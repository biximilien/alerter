require 'rails_helper'

RSpec.describe Alerter::Message do
  subject do
    class MockMessage
      include Alerter::Message

      def message
        super :test
      end
    end

    MockMessage.new(
      @target = FactoryGirl.build(:model_mock),
      @source = FactoryGirl.build(:model_mock),
      @object = FactoryGirl.build(:model_mock))
  end

  describe ".for" do
    it { expect(Alerter::Message).to respond_to :for }

    it "returns a subclass of matching 'message'" do
      expect(Alerter::Message.for(:test)).to be_equal(Alerter::Message::Test)
    end
  end

  describe "#target" do
    it { should respond_to :target}

    it "returns the associated 'target'" do
      expect(subject.target).to be_equal(@target)
    end
  end

  describe "#source" do
    it { should respond_to :source}

    it "returns the associated 'source'" do
      expect(subject.source).to be_equal(@source)
    end
  end

  describe "#object" do
    it { should respond_to :object}

    it "returns the associated 'object'" do
      expect(subject.object).to be_equal(@object)
    end
  end

  describe "#message", type: :feature do
    it { should respond_to :message }

    it "renders the alert message" do
      expect(subject.message).to have_css('p', text: 'This is a test message.')
    end
  end
end
