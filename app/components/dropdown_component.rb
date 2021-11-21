# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  # renders_one :dropdown_button, "ButtonOutlineComponent"
  renders_one :dropdown_button
  renders_one :dropdown_content
end
