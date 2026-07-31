# frozen_string_literal: true

# Load an imaginary (rails), app
Bundler.require

# TODO: After v3 remove this test script
# Autorun disablement from MultiTest is no longer touching supported `test-unit` code via the legacy runner.
# So we just check that calling our code doesn't break anything
require 'multi_test'
MultiTest.extend_with_best_assertion_library(self)

# Now anything we do should not be affected
exit 0
