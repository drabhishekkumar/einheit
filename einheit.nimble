# Package

version       = "0.1.10"
author        = "Joey Payne"
description   = "Tool for providing unit tests. Einheit is German for Unit."
license       = "MIT"

srcDir = "src"

# Deps
requires "nim >= 0.17.0"

task test, "Run tests":
  exec "nim c -r tests/test.nim"

task testjs, "Run tests on Node.js":
  exec "nim js -d:nodejs -r tests/test.nim"
