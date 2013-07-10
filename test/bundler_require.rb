# Imagine this is your rails app
Bundler.require

# Now cucumber loads
require_relative "../lib/multi_test"
MultiTest.disable_autorun

require 'minitest/autorun' if defined?(Minitest)

