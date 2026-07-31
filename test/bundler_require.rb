# frozen_string_literal: true

# Load an imaginary (rails), app
Bundler.require

# Manually (or automatically), disable autorun
# NB: This should (as of v2), only affect anything with test-unit loaded
require 'multi_test'
MultiTest.disable_autorun

# Now anything we do should not be affected
exit 0
