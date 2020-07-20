module Presenter
  module Line
    class Base < Presenter::Base
      attr_reader :left_factor, :operator, :right_factor, :assignment, :result

      def initialize(
        left_factor,
        operator,
        right_factor,
        assignment,
        result
      )
        @left_factor = left_factor
        @operator = operator
        @right_factor = right_factor
        @assignment = assignment
        @result = result
      end

      def call
        raise NotImplementedError
      end
    end
  end
end
