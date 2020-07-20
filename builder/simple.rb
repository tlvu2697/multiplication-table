module Builder
  class Simple < Base
    attr_reader :table_range, :line_range

    def initialize(table_range, line_range)
      @table_range = table_range
      @line_range = line_range
    end

    def call
      @object = MultiplicationTable.new(
        table_range.map do |table|
          Table.new(
            line_range.map do |line|
              Line.new(table, '*', line, '=')
            end
          )
        end
      )
    end
  end
end
