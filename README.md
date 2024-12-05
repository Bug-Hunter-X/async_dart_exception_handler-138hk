# Unhandled Exception in Asynchronous Dart Code

This example demonstrates a common issue in Dart: insufficient exception handling in asynchronous operations.  The original code lacks proper exception handling, leading to potential silent failures. The solution shows how to correctly address this.

## Problem

The `fetchData` function makes a network request.  If the request fails, the original `catch` block only prints an error message but does not propagate the error.  This can make it difficult to debug and handle failures.

## Solution

The improved `fetchData` function includes a `rethrow` statement. This ensures that the exception is propagated up the call stack, allowing the calling function to handle the error gracefully.
