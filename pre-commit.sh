#!/bin/bash

# Get the previous version and operation from the VERSION file.
read PREV_VERSION OP < VERSION

# Get the next version
nextversion=$(bash semver.sh -${OP} ${PREV_VERSION})

# Write the new version and 'p' to the VERSION file
echo "${nextversion}" 'p'> VERSION

# Add the VERSION file to the staging area
git add VERSION

# Print the next version
echo "${nextversion}"