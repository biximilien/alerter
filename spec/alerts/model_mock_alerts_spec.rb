module Alerter
  RSpec.describe ModelMockAlerts do
    describe :created do
      subject { Alerts[:created] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was created." }
    end

    describe :updated do
      subject { Alerts[:updated] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was updated." }
    end

    describe :deleted do
      subject { Alerts[:deleted] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was deleted." }
    end
  end
end
