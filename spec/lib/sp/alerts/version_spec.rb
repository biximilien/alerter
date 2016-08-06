require 'rails_helper'

RSpec.describe SP::Alerts do
  it "has a version number" do
    expect(SP::Alerts).to be_const_defined(:VERSION)
  end
end
