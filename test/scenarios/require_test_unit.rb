# Imagine this is your rails app
require 'test/unit'

# Now cucumber loads
require "multi_test"
MultiTest.disable_autorun
MultiTest.extend_with_best_assertion_library(self)
