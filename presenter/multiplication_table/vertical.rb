module Presenter
  module MultiplicationTable
    class Vertical < Presenter::MultiplicationTable::Base
      def call
        @object = tables.join("\n")
      end
    end
  end
end
