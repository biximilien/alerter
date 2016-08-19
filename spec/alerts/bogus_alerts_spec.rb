RSpec.describe BogusAlerts do
  before :all do
    @source = FactoryGirl.create(:model_mock)
    @target = FactoryGirl.create(:model_mock)
    @object = FactoryGirl.create(:model_mock)
  end

  context BogusAlerts do
    describe 'created' do
      subject { BogusAlerts['created'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} created #{@object}." }
    end

    describe 'updated' do
      subject { BogusAlerts['updated'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} updated #{@object}." }
    end

    describe 'deleted' do
      subject { BogusAlerts['deleted'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} deleted #{@object}." }
    end
  end

  context Alerter::Alerts do
    describe 'bogus.created' do
      subject { Alerter::Alerts['bogus.created'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} created #{@object}." }
    end

    describe 'bogus.updated' do
      subject { Alerter::Alerts['bogus.updated'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} updated #{@object}." }
    end

    describe 'bogus.deleted' do
      subject { Alerter::Alerts['bogus.deleted'] }

      it { expect(subject).not_to be_nil }
      it { expect(subject).to be_a Proc }
      it { expect(subject.call(@source, @target, @object)).to eq "#{@source} deleted #{@object}." }
    end
  end
end
