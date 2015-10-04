#!/usr/bin/env sh

# Exit on first error
set -e

# Read parameters
. `dirname $0`/build/parseargs.sh

# Parameters check

if [ "$SHOW_HELP" = "true" ] || [ -z "$LOCAL_NAME" ]; then
  echo "Usage: $0 [options]"
  echo
  echo "Options:"
  echo " -n, -l, --name, --image-name, --local-name <name> The name of the docker image to test. REQUIRED"
  echo
  if [ "$SHOW_HELP" = "true" ]; then
    exit
  else
    exit 1
  fi
fi

# Tests

echo
echo "###"
echo "### Testing the image"
echo "###"
docker run ${LOCAL_NAME} java -version
