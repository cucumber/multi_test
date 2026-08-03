# Changelog

All notable changes to this project will be documented in this file. For older versions see the [changelog archive](./CHANGELOG.old.md)

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

This file is intended to be modified using the [`changelog`](https://github.com/cucumber/changelog) command-line tool.

## [Unreleased]
### Added
- Established minimum support for `test-unit` of `3.4` and above

### Changed
- **BREAKING CHANGE**: Upped minimum ruby from `2.6` to `3.2` ([#100](https://github.com/cucumber/multi_test/issues/100))
- Did a full restructure of the repo in line with other cucumber repos ([#101](https://github.com/cucumber/multi_test/issues/101))

### Removed
- `MultiTest.disable_autorun` has been removed as it no longer impacts `test-unit` in v3+

## [2.0.0] - 2026-07-30
### Changed
- **BREAKING CHANGE**: Upped minimum ruby from `2.0` to `2.6` ([#97](https://github.com/cucumber/multi_test/issues/97))
- **BREAKING CHANGE**: Upped minimum `minitest` support from `2.0` to `5.0`
- **BREAKING CHANGE**: Removed all minitest autorun shims
- **BREAKING CHANGE**: Upped minimum `rspec` support from `1.0` to `2.0`
- Ran a full aggressive rubocop audit on code to refactor into more modern ruby style ([#97](https://github.com/cucumber/multi_test/issues/97))

### Fixed
- Partially fixed the local execution of tests by not complaining when test frameworks output boilerplate responses

## [1.1.0] - 2022-05-11
### Added
- `MultiTest.disable_autorun` is back again!
([#33](https://github.com/cucumber/multi_test/issues/33)
[#26](https://github.com/cucumber/multi_test/issues/26))

## [1.0.0] - 2022-05-04
### Changed
- As per [#251](https://github.com/cucumber/cucumber/issues/251): renamed History.md to CHANGELOG.md, added contributing message at beginning, and other formatting. ([#12](https://github.com/cucumber/multi_test/pull/12) [jaysonesmith](https://github.com/jaysonesmith/))

### Removed
- Remove test files from the gem to prevent false-positive with security scanners
as reported in [#21](https://github.com/cucumber/multi_test/issues/21)
- Drop support for ruby < 2.0
([PR#28](https://github.com/cucumber/multi_test/pull/28))
- Removed `disable_autorun`
([PR#30](https://github.com/cucumber/multi_test/pull/30)
[Issue#26](https://github.com/cucumber/multi_test/issues/26))

## [0.1.2]
### Changed
- Ensure that detecting assertion library doesn't fail if no test framework
included. Ruby `2.2` removed minitest from standard library. (@tooky, @jmoody)

## [0.1.1]
### Removed
- Remove incompatibility with ruby 1.8.7

## [0.1.0]
### Added
- Detect the best available assertion library for cucumber (@tooky)

## [0.0.3]
### Fixed
- Fix for Rails 4.1, Minitest 5.x ([#4](https://github.com/cucumber/multi_test/pull/4) Andy Lindeman)

## [0.0.2]
### Changed
- First gem release

[Unreleased]: https://github.com/cucumber/multi_test/compare/v2.0.0..HEAD
[2.0.0]: https://github.com/cucumber/multi_test/compare/v1.1.0..v2.0.0
[1.1.0]: https://github.com/cucumber/multi_test/compare/v1.0.0..v1.1.0
[1.0.0]: https://github.com/cucumber/multi_test/compare/v0.1.2..v1.0.0
[0.1.2]: https://github.com/cucumber/multi_test/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/cucumber/multi_test/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/cucumber/multi_test/compare/v0.0.3...v0.1.0
[0.0.3]: https://github.com/cucumber/multi_test/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/cucumber/multi_test/compare/bae4b700eb63cfb4e95f7acc35e25683f697905a...v0.0.2
