require 'redcarpet'

module Alerter::Message

  class << self
    include ActiveSupport::Inflector

    def for(message)
      return nil if message.nil?
      camelize("alerter/message/#{message}").constantize
    end
  end

  @@markdown = ::Redcarpet::Markdown.new(
    Redcarpet::Render::HTML, autolink: true)

  attr_reader :source, :target, :object

  def initialize(target, source, object)
    @source = source
    @source_url = source_url
    @target = target
    @target_url = target_url
    @object = object
    @object_url = object_url
  end

  def message(text)
    markdown(I18n.translate(text,
      scope: [:alerter, :message],
      source: @source,
      source_url: @source_url,
      target: @target,
      target_url: @target_url)).html_safe
  end

  private

    def markdown(text)
      @@markdown.render text
    end

    def source_url
      nil
    end

    def target_url
      nil
    end

    def object_url
      nil
    end

end
