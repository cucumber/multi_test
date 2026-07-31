# How this gem is tested

We build a matrix of test cases from the gemfile directories.

Each folder contains each of the different gem configurations we want to test with. Then, for each gemfile, there's a
`scenarios` file which lists the individual ruby scripts we wish to test in that gemfile's environment.

Success for each test case is:
1. Nothing unexpected was written to standard output
2. The ruby script exited with status 0 (i.e. no exception was raised)

## Running tests

Use this command (from the root) to run all the tests:

```shell
./test-all
```

Use this command to run a specific Gemfile's scenarios:

```shell
# Run scenarios just for rspec-3
./test-gemfile test/gemfile/rspec-3
```
