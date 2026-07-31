# frozen_string_literal: true

require_relative 'multi_test/assertion_library'

module MultiTest
  class << self
    # TODO: Remove in v3 (Targeting minitest and external gem removals first)
    def disable_autorun
      Test::Unit::Runner.module_eval('@@stop_auto_run = true', __FILE__, __LINE__) if defined?(Test::Unit::Runner)
    end

    def extend_with_best_assertion_library(object)
      AssertionLibrary.detect_best.extend_world(object)
    end
  end
end
