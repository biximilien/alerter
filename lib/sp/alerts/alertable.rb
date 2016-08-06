module SP::Alerts::Alertable

  def alert(source, source_url, message, object = nil, object_url = nil)
    SP::Alerts::Alert.create(
      target: self,
      target_url: self_url,
      source: source,
      source_url: source_url,
      message: message,
      object: object,
      object_url: object_url)
  end

  private

    def self_url
      nil
    end

end
