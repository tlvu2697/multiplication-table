module Presenter
  module MultiplicationTable
    class Base < Presenter::Base
      attr_reader :tables

      def initialize(tables)
        @tables = tables
      end

      def call
        raise NotImplementedError
      end
    end
  end
end
