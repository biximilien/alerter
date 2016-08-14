class Alerter::Message::NewRequest < Alerter::Message::Base
  def message
    super :new_request
  end
end
