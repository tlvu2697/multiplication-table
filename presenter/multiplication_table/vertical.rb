module Presenter
  module MultiplicationTable
    class Vertical < Presenter::MultiplicationTable::Base
      def render
        render_tty.join(VERTICAL_DELIMETER)
      end

      def render_tty
        tables
      end
    end
  end
end
