# frozen_string_literal: true

module Alerter
  RSpec.describe Alertable do
    subject { FactoryBot.create(:model_mock) }

    describe '#alert' do
      it { should respond_to? :alert }
      it { expect(subject).to respond_to :alert }

      it 'creates an alert' do
        expect do
          subject.alert(
            source: FactoryBot.create(:model_mock),
            key: :test
          )
        end.to change(Alert, :count).by(1)
      end
    end

    describe '#alerts' do
      it { should respond_to? :alerts }
      it { expect(subject).to respond_to :alerts }

      it 'returns the alerts for associated resource' do
        @source = FactoryBot.create(:model_mock)
        @alerts = FactoryBot.create_list(:alert, 10, target: subject, source: @source)
        expect(subject.alerts).to match_array(@alerts)
      end
    end
  end
end
