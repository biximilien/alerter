require 'rails_helper'

RSpec.describe SP::Alerts::Alert, type: :model do
  it { should belong_to :source }
  it { should belong_to :target }
  it { should belong_to :object }
end
