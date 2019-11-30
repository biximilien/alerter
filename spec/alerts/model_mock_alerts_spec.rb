# frozen_string_literal: true

RSpec.describe ModelMockAlerts do
  context ModelMockAlerts do
    [:created, 'created'].each do |created|
      describe created do
        subject { ModelMockAlerts[created] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was created.' }
      end
    end

    [:updated, 'updated'].each do |updated|
      describe updated do
        subject { ModelMockAlerts[updated] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was updated.' }
      end
    end

    [:deleted, 'deleted'].each do |deleted|
      describe deleted do
        subject { ModelMockAlerts[deleted] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was deleted.' }
      end
    end
  end

  context Alerter::Alerts do
    [:"model_mock.created", 'model_mock.created'].each do |created|
      describe created do
        subject { Alerter::Alerts[created] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was created.' }
      end
    end

    [:"model_mock.updated", 'model_mock.updated'].each do |updated|
      describe updated do
        subject { Alerter::Alerts[updated] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was updated.' }
      end
    end

    [:"model_mock.deleted", 'model_mock.deleted'].each do |deleted|
      describe deleted do
        subject { Alerter::Alerts[deleted] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call).to eq 'A model mock was deleted.' }
      end
    end
  end
end
