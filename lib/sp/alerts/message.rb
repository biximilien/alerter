module SP::Alerts::Message

  @@markdown = Redcarpet::Markdown.new

  attr_reader :source, :target, :source_url, :target_url

  def initialize(source, target, source_url, target_url)
    @source = source
    @source_url = source_url
    @target = target
    @target_url = target_url
  end

  def message(text)
    markdown(I18n.translate(text,
      source: @source,
      source_url: @source_url,
      target: @target,
      target_url: @target_url)).html_safe
  end

  protected

    def markdown(text)
      @@markdown.render text
    end

end
