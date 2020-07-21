module Presenter
  class Base
    HORIZONTAL_DELIMETER = ' '.freeze
    VERTICAL_DELIMETER = "\n".freeze

    def render
      raise NotImplementedError
    end

    def render_tty
      raise NotImplementedError
    end
  end
end
