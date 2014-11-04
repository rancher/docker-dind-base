#!/bin/bash
set -e

# force the bash shell that runs at the end of wrap docker
# to exit.
bash -x wrapdocker </dev/null

# Give it 10 seconds to start
for ((i=0;i<100;i++)); do
    if docker ps >/dev/null 2>&1; then
        break
    else
        sleep .1
    fi
done

exec "$@"
