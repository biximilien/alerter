RSpec.describe BogusAlerts do
  before :all do
    @source = FactoryGirl.create(:model_mock)
    @target = FactoryGirl.create(:model_mock)
    @object = FactoryGirl.create(:model_mock)
  end

  context BogusAlerts do
    ['created', :created].each do |created|
      describe created do
        subject { BogusAlerts[created] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} created #{@object}." }
      end
    end

    ['updated', :updated].each do |updated|
      describe updated do
        subject { BogusAlerts[updated] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} updated #{@object}." }
      end
    end

    ['deleted', :deleted].each do |deleted|
      describe deleted do
        subject { BogusAlerts[deleted] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} deleted #{@object}." }
      end
    end
  end

  context Alerter::Alerts do
    [:"bogus.created", 'bogus.created'].each do |created|
      describe created do
        subject { Alerter::Alerts[created] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} created #{@object}." }
      end
    end

    [:"bogus.updated", 'bogus.updated'].each do |updated|
      describe updated do
        subject { Alerter::Alerts[updated] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} updated #{@object}." }
      end
    end

    [:"bogus.deleted", 'bogus.deleted'].each do |deleted|
      describe deleted do
        subject { Alerter::Alerts[deleted] }

        it { expect(subject).not_to be_nil }
        it { expect(subject).to be_a Proc }
        it { expect(subject.call(@source, @target, @object)).to eq "#{@source} deleted #{@object}." }
      end
    end
  end
end
