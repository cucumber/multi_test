# frozen_string_literal: true

require 'multi_test'

begin
  MultiTest.extend_with_best_assertion_library(self)
rescue NoMethodError => e
  raise 'no assertion library detected' if e.message.include?('extend_world')

  raise e
end
