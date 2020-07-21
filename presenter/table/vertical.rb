module Presenter
  module Table
    class Vertical < Presenter::Table::Base
      def render
        render_tty.join(VERTICAL_DELIMETER)
      end

      def render_tty
        lines
      end
    end
  end
end
