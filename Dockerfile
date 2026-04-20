# Build stage: install dependencies (includes compilers and headers)
FROM python:3.12-slim AS builder
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir --prefix=/install saleor

# Runtime stage: copy only installed packages, drop build tooling
FROM python:3.12-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq5 \
    && rm -rf /var/lib/apt/lists/*
COPY --from=builder /install /usr/local
RUN useradd --no-create-home --shell /bin/false saleor
WORKDIR /app
RUN chown saleor:saleor /app
USER saleor
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD python -c "import socket; s=socket.socket(); s.settimeout(5); s.connect(('localhost', 8000)); s.close()" || exit 1
