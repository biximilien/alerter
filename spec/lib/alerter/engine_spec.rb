module Alerter
  RSpec.describe Engine do
    it "isolates 'Alerter' namespace" do
      expect(Engine).to respond_to :isolate_namespace
    end
  end
end
