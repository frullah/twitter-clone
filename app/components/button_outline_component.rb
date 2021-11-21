# frozen_string_literal: true

class ButtonOutlineComponent < ViewComponent::Base
  def initialize(**options)
    @options = options
    @options[:class] = "btn btn-outline #{@options[:class]}"
  end

  def is_link?
    @options[:href].present?
  end
end
