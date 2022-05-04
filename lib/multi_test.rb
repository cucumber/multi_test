require 'multi_test/assertion_library'
module MultiTest
  def self.extend_with_best_assertion_library(object)
    AssertionLibrary.detect_best.extend_world(object)
  end
end
