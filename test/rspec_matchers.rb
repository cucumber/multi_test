# frozen_string_literal: true

# Manually (or automatically), extend the running context (or world if running in cucumber), with the desired testing library
# NB: This should (as of v2), mix in rspec to the running context
require 'multi_test'
MultiTest.extend_with_best_assertion_library(self)

# Now any RSpec assertion should run in the current running context
expect(1).to eq(1)
