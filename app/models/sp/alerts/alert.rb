module SP::Alerts
  class Alert < ApplicationRecord

    validates :source_id,
      presence: true

    validates :target_id,
      presence: true

    validates :source_type,
      presence: true,
      allow_blank: false

    validates :target_type,
      presence: true,
      allow_blank: false

    validates :source_url,
      presence: true,
      allow_blank: false

    validates :target_url,
      presence: true,
      allow_blank: false

    validates :message,
      presence: true,
      allow_blank: false

  end
end
