module Presenter
  class Base
    attr_reader :object

    def self.call(*args, &block)
      instance = new(*args, &block)
      instance.call
      instance
    end
  end
end
