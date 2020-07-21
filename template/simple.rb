module Template
  class Simple < Base
    def call
      @object = Presenter::MultiplicationTable::Grid.new(
        multiplication_table.tables.map do |table|
          Presenter::Table::Vertical.new(
            table.lines.map do |line|
              Presenter::Line::Horizontal.new(
                line.left_factor,
                line.operator,
                line.right_factor,
                line.assignment,
                line.result
              ).render
            end
          ).render_tty
        end,
        2, 2
      ).render
    end
  end
end
