require 'rails_helper'

RSpec.describe Alerter::Engine do
  it "isolates 'Alerter' namespace" do
    expect(Alerter::Engine).to respond_to :isolate_namespace
  end
end
