module Presenter
  module MultiplicationTable
    class Horizontal < Presenter::MultiplicationTable::Base
      def call
        @object = tables.join(' ')
      end
    end
  end
end
