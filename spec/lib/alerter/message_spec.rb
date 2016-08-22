module Alerter
  RSpec.describe Message do
    subject do
      Message.for(FactoryGirl.create(:alert))
    end

    describe "#target" do
      it { should respond_to :target}

      it "returns the associated 'target'" do
        expect(subject.target).not_to be_nil
      end
    end

    describe "#source" do
      it { should respond_to :source}

      it "returns the associated 'source'" do
        expect(subject.source).not_to be_nil
      end
    end

    describe "#object" do
      it { should respond_to :object}
    end

    describe "#message" do
      it { should respond_to :message }

      it "renders the alert message" do
        expect(subject.message).to eq("This is a test.")
      end
    end
  end
end
