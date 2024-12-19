# Lua Implicit Nil to 0 Conversion Bug

This repository demonstrates a common, yet subtle, bug in Lua related to the implicit conversion of `nil` to 0 in arithmetic operations. This can lead to unexpected behavior and difficult-to-debug errors.

## Bug Description

Lua's loose typing can cause problems when `nil` values are inadvertently used in arithmetic expressions.  Instead of raising an error, Lua implicitly converts `nil` to 0, leading to incorrect calculations and potentially masking genuine errors.

## Reproduction

The `bug.lua` file contains code that exemplifies this issue.  Running the script will initially produce the expected `nil` but subsequently produces an unexpected `11`, then throws an error when a nil value is not explicitly checked.

## Solution

The `bugSolution.lua` file demonstrates a corrected version of the code. The solution involves explicitly checking for `nil` before performing any arithmetic operations to prevent unexpected behavior.

## Conclusion

Always explicitly check for `nil` values before using them in arithmetic operations to prevent this type of error and ensure robust code.