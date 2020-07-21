module Presenter
  module MultiplicationTable
    class Horizontal < Presenter::MultiplicationTable::Base
      def render
        render_tty.join(HORIZONTAL_DELIMETER)
      end

      def render_tty
        tables
      end
    end
  end
end
