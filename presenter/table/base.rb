module Presenter
  module Table
    class Base < Presenter::Base
      attr_reader :lines, :line_presenter

      def initialize(lines)
        @lines = lines
      end

      def call
        raise NotImplementedError
      end
    end
  end
end
