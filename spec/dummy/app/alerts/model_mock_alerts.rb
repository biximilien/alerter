class ModelMockAlerts < Alerter::Alerts
  message :created do
    "A model mock was created."
  end

  message :updated do
    "A model mock was updated."
  end

  message :deleted do
    "A model mock was deleted."
  end
end
