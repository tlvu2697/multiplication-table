class Line
  attr_accessor :left_factor, :operator, :right_factor, :assignment

  def initialize(left_factor, operator, right_factor, assignment)
    @left_factor = left_factor
    @operator = operator
    @right_factor = right_factor
    @assignment = assignment
  end

  def result
    left_factor * right_factor
  end
end
