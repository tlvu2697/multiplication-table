module Presenter
  module MultiplicationTable
    class Grid < Presenter::MultiplicationTable::Base
      attr_reader :vertical, :horizontal

      def initialize(tables, vertical, horizontal)
        super(tables)
        @vertical = vertical
        @horizontal = horizontal
      end
    end
  end
end
