# frozen_string_literal: true

# Manually (or automatically), extend the running context (or world if running in cucumber), with the desired testing library
# NB: This should (as of v2), not mix anything in as there is no defined testing framework preloaded
require 'multi_test'
MultiTest.extend_with_best_assertion_library(self)

# We cannot run any testing framework code. So we just validate normal ruby code works
:no_op.is_a?(Symbol)
