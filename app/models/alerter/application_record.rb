# frozen_string_literal: true

module Alerter
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
