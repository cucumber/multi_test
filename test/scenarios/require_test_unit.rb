# Imagine this is your rails app
if RUBY_VERSION =~ /^2\.2/

else
  require 'test/unit'
end

# Now cucumber loads
require "multi_test"
MultiTest.disable_autorun
