# frozen_string_literal: true

# After loading any app, enable the autorun functionality in minitest
require 'minitest/autorun'

# Autorun disablement from MultiTest is no longer touching supported `test-unit` code via the legacy runner.
# So we just check that calling our code doesn't break anything
require 'multi_test'
MultiTest.extend_with_best_assertion_library(self)

# Now anything we do should not be affected
exit 0
