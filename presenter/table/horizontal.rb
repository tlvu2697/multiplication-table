module Presenter
  module Table
    class Horizontal < Presenter::Table::Base
      def render
        render_tty.join(HORIZONTAL_DELIMETER)
      end

      def render_tty
        lines
      end
    end
  end
end
