class Alerter::Message::NewFollower < Alerter::Message::Base
  def message
    super :new_follower
  end
end
