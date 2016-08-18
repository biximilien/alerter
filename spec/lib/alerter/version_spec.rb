RSpec.describe Alerter do
  it "has a version number" do
    expect(Alerter).to be_const_defined(:VERSION)
  end
end
