#!/bin/sh
set -e

# Render sets PORT automatically; map it to HTTP_ADDR
if [ -n "$PORT" ]; then
  export HTTP_ADDR="0.0.0.0:${PORT}"
fi

exec cpa-manager-plus "$@"
