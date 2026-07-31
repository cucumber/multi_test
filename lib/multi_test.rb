# frozen_string_literal: true

require_relative 'multi_test/assertion_library'

module MultiTest
  class << self
    def extend_with_best_assertion_library(object)
      AssertionLibrary.detect_best.extend_world(object)
    end
  end
end
