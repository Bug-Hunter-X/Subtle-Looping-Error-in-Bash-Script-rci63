# Shell Script Bug: Unexpected Loop Termination

This repository demonstrates a subtle bug in a bash script that involves improper handling of loop conditions and input.  The `bug.sh` file contains the erroneous code, while `bugSolution.sh` provides the corrected version.  The bug manifests when processing lines containing only whitespace or empty lines before the "END" marker, causing premature termination of the loop.

The solution addresses this by using a more robust check to identify the termination condition.