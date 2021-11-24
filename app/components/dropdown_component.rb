# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  # renders_one :dropdown_button, "ButtonOutlineComponent"
  renders_one :dropdown_button
  renders_one :dropdown_content, ->(**options, &block) do
    options[:class] = "dropdown-content #{options[:class]}"
    content_tag(:div, **options) do
      capture(&block)
    end
  end
end
