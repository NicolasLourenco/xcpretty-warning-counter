# XCPretty Warning Counter

A custom formatter for [xcpretty](https://github.com/supermarin/xcpretty) that counts warnings and outputs them in JSON and YAML format in a files named `warning-counts.json` and `warning-counts.yaml` respectively

## Installation

This formatter is distributed via RubyGems, and depends on a version of `xcpretty` >= 0.0.7 (when custom formatters were introduced). Run:

    gem install xcpretty-warning-counter

## Usage

Specify `xcpretty-warning-counter` as a custom formatter to `xcpretty`:

```bash
#!/bin/bash

xcodebuild | xcpretty -f `xcpretty-warning-counter`
```

## How it works

The `--formatter` option takes a file path as an argument, so the `xcpretty-warning-counter` script returns the location of the installed Ruby formatter class. It must be evaluated before the xcpretty arguments are evaluated, hence the backtick wrapping. The Ruby script must return a Ruby class that is a subclass of `XCPretty::Formatter`.  This then receives `formatter_*` method invocations as the build output is parsed.  

I use the start of the tests as the indicator for when to write the warning file, so this formatter only works for with the `tests` argument of `xcodebuild`.
