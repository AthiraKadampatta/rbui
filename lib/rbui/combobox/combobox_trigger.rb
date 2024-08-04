# frozen_string_literal: true

module RBUI
  class ComboboxTrigger < Base
    def initialize(placeholder:, **attrs)
      @placeholder = placeholder
      super(**attrs)
    end

    def view_template
      button(**attrs) do
        span(data: {rbui__combobox_target: "content"}) { @placeholder }
        icon
      end
    end

    private

    def icon
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        viewbox: "0 0 24 24",
        fill: "none",
        stroke: "currentColor",
        class: "ml-2 h-4 w-4 shrink-0 opacity-50",
        stroke_width: "2",
        stroke_linecap: "round",
        stroke_linejoin: "round"
      ) do |s|
        s.path(
          d: "m7 15 5 5 5-5"
        )
        s.path(
          d: "m7 9 5-5 5 5"
        )
      end
    end

    def default_attrs
      {class: "inline-flex items-center whitespace-nowrap rounded-md text-sm ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 w-[200px] justify-between",
       data: {
         action: "rbui--combobox#onClick",
         rbui__combobox_target: "input"
       },
       role: "combobox", variant: "outline",
       aria: {
         expanded: "false",
         haspopup: "listbox",
         autocomplete: "none"
       }}
    end
  end
end
