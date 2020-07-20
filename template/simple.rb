module Template
  class Simple < Base
    def call
      @object = Presenter::MultiplicationTable::Vertical.call(
        multiplication_table.tables.map do |table|
          Presenter::Table::Vertical.call(
            table.lines.map do |line|
              Presenter::Line::Horizontal.call(
                line.left_factor,
                line.operator,
                line.right_factor,
                line.assignment,
                line.result
              ).object
            end
          ).object
        end
      ).object
    end
  end
end
