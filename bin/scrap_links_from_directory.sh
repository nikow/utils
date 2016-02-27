#!/bin/bash

find "$1" -type f -exec cat "{}" \; | sed -n 's/.*href="\([^"]*\).*/\1/p'
