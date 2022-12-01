#!/bin/bash

find . -name "*py" -print0 | xargs -0 /dev/null
