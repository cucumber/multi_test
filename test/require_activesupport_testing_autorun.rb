# frozen_string_literal: true

# After loading any app, enable the autorun functionality in active_support
require 'active_support/testing/autorun'

# Manually (or automatically), disable autorun
# NB: This should (as of v2), only affect anything with test-unit loaded (Which it isn't here)
require 'multi_test'
MultiTest.disable_autorun

# Now anything we do should not be affected
exit 0
