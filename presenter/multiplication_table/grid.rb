module Presenter
  module MultiplicationTable
    class Grid < Presenter::MultiplicationTable::Base
      HORIZONTAL_DELIMETER = ' | '.freeze
      INLINE_VERTICAL_DELIMETER = "\n".freeze
      VERTICAL_DELIMETER = "\n-\n".freeze

      attr_reader :vertical, :horizontal

      def initialize(tables, vertical, horizontal)
        @vertical = vertical
        @horizontal = horizontal
        super(tables)
      end

      def render
        render_tty.join(VERTICAL_DELIMETER)
      end

      def render_tty
        rendered_tables = []

        vertical.times do
          rendered_tables << transform(tables.shift(horizontal))
        end

        rendered_tables
      end

      private

      def validate_size!
        return false if tables.length != horizontal * vertical

        true
      end

      def transform(inline_tables)
        inline_tables = inline_tables.transpose

        inline_tables = inline_tables.map do |inline_table|
          inline_table.join(HORIZONTAL_DELIMETER)
        end

        inline_tables.join(INLINE_VERTICAL_DELIMETER)
      end
    end
  end
end
