class BogusAlerts < Alerter::Alerts
  message :created do |source, target, object|
    "#{source} created #{object}."
  end

  message :updated do |source, target, object|
    "#{source} updated #{object}."
  end

  message :deleted do |source, target, object|
    "#{source} deleted #{object}."
  end
end
