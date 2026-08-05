# frozen_string_literal: true

require_relative 'multi_test/minitest_world'

class MultiTest
  class << self
    def extend_with_best_assertion_library(object)
      available.detect(&:require?)&.extend_world(object)
    end

    private

    def available
      @available ||= [
        rspec,
        minitest,
        test_unit
      ]
    end

    # Supported API is v2+
    def rspec
      new(
        proc { require 'rspec/expectations' },
        proc { |object| object.extend(::RSpec::Matchers) }
      )
    end

    # Supported API is v5+
    def minitest
      new(
        proc { require 'minitest/assertions' },
        proc { |object| object.extend(MultiTest::MinitestWorld) }
      )
    end

    # Test::Unit (Ruby standard); From v2.1+ it became the `test-unit` gem
    # Supported API is v3.4+
    def test_unit
      new(
        proc { require 'test/unit/assertions' },
        proc { |object| object.extend(Test::Unit::Assertions) }
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
