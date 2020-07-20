module Template
  class Base
    attr_reader :object, :multiplication_table

    def self.call(*args, &block)
      instance = new(*args, &block)
      instance.call
      instance
    end

    def initialize(multiplication_table)
      @multiplication_table = multiplication_table
    end
  end
end
