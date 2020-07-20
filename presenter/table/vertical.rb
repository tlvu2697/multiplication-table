module Presenter
  module Table
    class Vertical < Presenter::Table::Base
      def call
        @object = lines.join("\n")
      end
    end
  end
end
