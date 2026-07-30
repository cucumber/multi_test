# frozen_string_literal: true

require 'English'
require 'multi_test/assertion_library'
module MultiTest
  def self.disable_autorun
    Test::Unit::Runner.module_eval('@@stop_auto_run = true') if defined?(Test::Unit::Runner)

    return unless defined?(Minitest)

    Minitest.instance_eval do
      def run(*)
        # propagate the exit code from cucumber or another runner
        case $ERROR_INFO
        when SystemExit
          $ERROR_INFO.status
        else
          true
        end
      end
    end

    return unless defined?(Minitest::Unit)

    Minitest::Unit.class_eval do
      def run(*); end
    end
  end

  def self.extend_with_best_assertion_library(object)
    AssertionLibrary.detect_best.extend_world(object)
  end
end
