class DropdownComponentPreview < ViewComponent::Preview
  def default
    render(DropdownComponent.new) do |c|
      c.dropdown_button do
        "Button Content"
      end

      c.dropdown_content do
        "Dropdown Content"
        # cannot using tag because this error
        # undefined method `output_buffer=' for #<DropdownComponentPreview...
        # tag.li do
        #   link_to "Hello", "#"
        # end
      end
    end
  end
end
