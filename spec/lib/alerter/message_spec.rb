module Alerter
  RSpec.describe Message do
    subject do
      Alerts.message(:test2){"This is another test."}

      Message.new(
        target: @target = FactoryGirl.build(:model_mock),
        source: @source = FactoryGirl.build(:model_mock),
        object: @object = FactoryGirl.build(:model_mock),
        message: :test2 )
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

    describe "#message" do
      it { should respond_to :message }

      it "renders the alert message" do
        expect(subject.message).to eq("This is another test.")
      end
    end
  end
end
