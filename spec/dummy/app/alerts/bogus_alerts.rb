# frozen_string_literal: true

class BogusAlerts < Alerter::Alerts
  message :created do |source, _target, object|
    "#{source} created #{object}."
  end

  message :updated do |source, _target, object|
    "#{source} updated #{object}."
  end

  message :deleted do |source, _target, object|
    "#{source} deleted #{object}."
  end
end
