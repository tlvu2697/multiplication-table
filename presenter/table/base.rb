module Presenter
  module Table
    class Base < Presenter::Base
      attr_reader :lines

      def initialize(lines)
        @lines = lines
      end
    end
  end
end
