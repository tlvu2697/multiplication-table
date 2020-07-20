module Presenter
  module Table
    class Horizontal < Presenter::Table::Base
      def call
        @object = lines.join(' ')
      end
    end
  end
end
