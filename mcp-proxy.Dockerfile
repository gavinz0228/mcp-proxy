# file: mcp-proxy.Dockerfile

FROM ghcr.io/sparfenyuk/mcp-proxy:latest

# Install the 'uv' package
RUN python3 -m ensurepip && pip install --no-cache-dir uv

RUN apk update && apk add --no-cache nodejs npm

ENV PATH="/usr/local/bin:$PATH" \
    UV_PYTHON_PREFERENCE=only-system



# No need to redeclare ENTRYPOINT - it's already set in the base image