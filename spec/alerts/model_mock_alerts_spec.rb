RSpec.describe ModelMockAlerts do
  context ModelMockAlerts do
    describe 'created' do
      subject { ModelMockAlerts['created'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was created." }
    end

    describe 'updated' do
      subject { ModelMockAlerts['updated'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was updated." }
    end

    describe 'deleted' do
      subject { ModelMockAlerts['deleted'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was deleted." }
    end
  end

  context Alerter::Alerts do
    describe 'model_mock.created' do
      subject { Alerter::Alerts['model_mock.created'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was created." }
    end

    describe 'model_mock.updated' do
      subject { Alerter::Alerts['model_mock.updated'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was updated." }
    end

    describe 'model_mock.deleted' do
      subject { Alerter::Alerts['model_mock.deleted'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call).to eq "A model mock was deleted." }
    end
  end
end
