# Imagine this is your rails app

# Some ruby versions do not include 'test/unit' stdlib.
begin
  require 'test/unit'
rescue LoadError => _

end

# Now cucumber loads
require "multi_test"
MultiTest.disable_autorun
