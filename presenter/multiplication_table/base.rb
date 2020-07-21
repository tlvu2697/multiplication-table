module Presenter
  module MultiplicationTable
    class Base < Presenter::Base
      attr_reader :tables

      def initialize(tables)
        @tables = tables
      end
    end
  end
end
