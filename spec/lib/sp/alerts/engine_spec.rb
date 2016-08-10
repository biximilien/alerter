require 'rails_helper'

RSpec.describe SP::Alerts::Engine do
  it "isolates 'SP::Alerts' namespace" do
    expect(SP::Alerts::Engine).to respond_to :isolate_namespace
  end
end
