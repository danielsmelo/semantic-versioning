#!/bin/bash

# Increment a version string using Semantic Versioning (SemVer) terminology.

if [ "$1" = "-h" ]; then
  echo "usage: $(basename $0) [-Mmp] [major.minor.patch]"
  exit 0
fi

increment_major=0
increment_minor=0
increment_patch=0
version=${2:-"0.0.0"}

if [[ ! $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "error: invalid version format: $version" >&2
  echo "usage: $(basename $0) [-Mmp] [major.minor.patch]" >&2
  exit 1
fi

case $1 in
  -M) increment_major=1;;
  -m) increment_minor=1;;
  -p) increment_patch=1;;
  *) echo "error: invalid option $1" >&2
     echo "usage: $(basename $0) [-Mmp] [major.minor.patch]" >&2
     exit 1;;
esac

IFS='.' read -r major minor patch <<< "$version"

if [ $increment_major -eq 1 ]; then
  major=$((major+1))
  minor=0
  patch=0
elif [ $increment_minor -eq 1 ]; then
  minor=$((minor+1))
  patch=0
else
  patch=$((patch+1))
fi

echo "$major.$minor.$patch"