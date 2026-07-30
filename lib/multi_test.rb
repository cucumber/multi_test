# frozen_string_literal: true

require 'English'
require 'multi_test/assertion_library'
module MultiTest
  class << self
    def disable_autorun
      Test::Unit::Runner.module_eval('@@stop_auto_run = true', __FILE__, __LINE__) if defined?(Test::Unit::Runner)
      disable_minitest_autorun
      disable_minitest_unit_autorun
    end

    def extend_with_best_assertion_library(object)
      AssertionLibrary.detect_best.extend_world(object)
    end

    private

    def disable_minitest_autorun
      return unless defined?(Minitest)

      Minitest.instance_eval do
        def run(*)
          # propagate the exit code from cucumber or another runner
          if $ERROR_INFO.is_a?(SystemExit)
            $ERROR_INFO.status
          else
            true
          end
        end
      end
    end

    def disable_minitest_unit_autorun
      return unless defined?(Minitest::Unit)

      Minitest::Unit.class_eval do
        def run(*); end
      end
    end
  end
end
