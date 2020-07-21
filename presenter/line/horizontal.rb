module Presenter
  module Line
    class Horizontal < Presenter::Line::Base
      def render
        render_tty.join(HORIZONTAL_DELIMETER)
      end

      def render_tty
        attributes
      end
    end
  end
end
