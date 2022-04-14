[![Tests](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yml/badge.svg)](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yml)

This project gives you a uniform interface onto whatever testing library has been
loaded into a running Ruby process.

We use this within cucumber-ruby to discover and auto-load your favourite assertion library

Example:
~~~ruby
require 'multi_test'

my_tests = Object.new
MultiTest.extend_with_best_assertion_library(my_tests)
~~~
