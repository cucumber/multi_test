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
          ruby_spec,
          minitest_assertions,
          minitest_unit,
          minitest_unit_assertions,
          # Null assertion library must come last to prevent exceptions if unable to load a test framework
          null
        ]
      end

      def rspec
        AssertionLibrary.new(
          proc { require 'rspec/expectations' },
          proc { |object| object.extend(::RSpec::Matchers) }
        )
      end

      def ruby_spec
        AssertionLibrary.new(
          proc {
            require 'spec/expectations'
            require 'spec/runner/differs/default'
            require 'ostruct'
          },
          proc { |object|
            options = OpenStruct.new(diff_format: :unified, context_lines: 3)
            Spec::Expectations.differ = Spec::Expectations::Differs::Default.new(options)
            object.extend(Spec::Matchers)
          }
        )
      end

      def minitest_assertions
        AssertionLibrary.new(
          proc { require 'minitest/assertions' },
          proc { |object| object.extend(MinitestWorld) }
        )
      end

      def minitest_unit
        AssertionLibrary.new(
          proc { require 'minitest/unit' },
          proc { |object| object.extend(MiniTest::Assertions) }
        )
      end

      def minitest_unit_assertions
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
