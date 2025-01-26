# Elixir Enum.each and Process.exit

This repository demonstrates a potential issue when using `Process.exit` within an `Enum.each` loop in Elixir. The example code abruptly terminates the enumeration when a specific condition is met, which may not be the intended behavior in all cases.  The solution provides a safer alternative using `Enum.reduce` or explicit error handling.