# frozen_string_literal: true

require 'multi_test/minitest_world'

module MultiTest
  class AssertionLibrary
    class << self
      def detect_best
        available.detect(&:require?)
      end

      private

      def available
        @available ||= [
          rspec,
          minitest,
          test_unit,
          # Null assertion library must come last to prevent exceptions if unable to load a test framework
          null
        ]
      end

      # API is v2+
      def rspec
        AssertionLibrary.new(
          proc { require 'rspec/expectations' },
          proc { |object| object.extend(::RSpec::Matchers) }
        )
      end

      # API is v5+
      def minitest
        AssertionLibrary.new(
          proc { require 'minitest/assertions' },
          proc { |object| object.extend(MinitestWorld) }
        )
      end

      # Test::Unit (Ruby standard); API is v1.8+
      # From v2.1+ it became the `test-unit` gem
      def test_unit
        AssertionLibrary.new(
          proc { require 'test/unit/assertions' },
          proc { |object| object.extend(Test::Unit::Assertions) }
        )
      end

      def null
        AssertionLibrary.new(
          proc {},
          proc {}
        )
      end
    end

    def initialize(requirer, extender)
      @requirer = requirer
      @extender = extender
    end

    def require?
      @requirer.call
      true
    rescue LoadError
      false
    end

    def extend_world(world)
      @extender.call(world)
    end
  end
end
