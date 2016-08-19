module Alerter
  RSpec.describe Alert, type: :model do

    it { should belong_to(:source) }
    it { should validate_presence_of :source }
    it { should_not allow_value(nil).for(:source)}

    it { should belong_to(:target) }
    it { should validate_presence_of :target }
    it { should_not allow_value(nil).for(:target)}

    it { should belong_to(:object) }
    it { should_not validate_presence_of :object }
    it { should allow_value(nil).for(:object)}

    it { should validate_presence_of :key }
    it { should_not allow_value(nil).for(:key)}
    it { should_not allow_value('').for(:key)}
  end
end
