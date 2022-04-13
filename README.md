[![Tests](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yml/badge.svg)](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yml)

This project gives you a uniform interface onto whatever testing library has been
loaded into a running Ruby process.

We use this within the Cucumber project to clobber autorun behaviour from older 
versions of `Test::Unit` that automatically hook in when the user requires them.

Example:
~~~ruby
require 'multi_test'
MultiTest.disable_autorun
~~~

