# frozen_string_literal: true

module MultiTest
  module MinitestWorld
    def self.extended(base)
      base.extend(Minitest::Assertions)
      base.assertions = 0
    end

    attr_accessor :assertions
  end
end
