class Alerter::Message::NewMessage < Alerter::Message::Base
  def message
    super :new_message
  end
end
