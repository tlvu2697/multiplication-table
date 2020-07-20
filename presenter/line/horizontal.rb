module Presenter
  module Line
    class Horizontal < Presenter::Line::Base
      def call
        @object = [
          left_factor,
          operator,
          right_factor,
          assignment,
          result
        ].join(' ')
      end
    end
  end
end
