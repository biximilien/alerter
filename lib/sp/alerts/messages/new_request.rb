class NewRequest < SP::Alerts::Messages::Base
  def message
    super :new_request
  end
end
