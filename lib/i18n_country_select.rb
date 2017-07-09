require 'unicode_utils/canonical_decomposition'
require 'unicode_utils/general_category'

require "i18n-country-translations"
require "i18n_country_select/form_builder"
require "i18n_country_select/form_helpers"
require "i18n_country_select/instance_tag"


module I18nCountrySelect

  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.config
    yield(configuration)
  end

  class Configuration
    attr_accessor :codes_key

    def initialize
      @codes_key = "countries"
    end
  end

end


ActionView::Base.send(:include, I18nCountrySelect::FormHelpers)
if Rails::VERSION::MAJOR >= 4
  ActionView::Helpers::Tags::Select.send(:include, I18nCountrySelect::InstanceTag)
else
  ActionView::Helpers::InstanceTag.send(:include, I18nCountrySelect::InstanceTag)
end
ActionView::Helpers::FormBuilder.send(:include, I18nCountrySelect::FormBuilder)
