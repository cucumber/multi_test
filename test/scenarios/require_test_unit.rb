# frozen_string_literal: true

# After loading any app, enable the autorun functionality in test-unit
require 'test/unit'

# Manually (or automatically), disable autorun
# NB: This should (as of v2), only affect anything with test-unit loaded (Which it IS here)
require 'multi_test'
MultiTest.disable_autorun

# Even though we have modified part of test-unit. We should still be able to exit cleanly
exit 0
