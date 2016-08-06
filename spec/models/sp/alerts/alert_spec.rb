require 'rails_helper'

RSpec.describe SP::Alerts::Alert, type: :model do

  it { should belong_to(:source) }
  it { should validate_presence_of :source }
  it { should_not allow_value(nil).for(:source)}

  it { should belong_to(:target) }
  it { should validate_presence_of :target }
  it { should_not allow_value(nil).for(:target)}

  it { should belong_to(:object) }
  it { should_not validate_presence_of :object }
  it { should allow_value(nil).for(:object)}

  it { should validate_presence_of :message }
  it { should_not allow_value(nil).for(:message)}
  it { should_not allow_value('').for(:message)}

end
