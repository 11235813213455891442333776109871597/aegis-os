# Aegis OS - Production Dockerfile
# Multi-stage build for minimal image size

# Stage 1: Build
FROM rust:1.75-slim-bookworm AS builder

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy manifests
COPY Cargo.toml Cargo.lock ./
COPY aegis-core/Cargo.toml ./aegis-core/

# Create dummy source for caching dependencies
RUN mkdir -p aegis-core/src && echo 'fn main() {}' > aegis-core/src/main.rs
RUN cargo build --release --manifest-path aegis-core/Cargo.toml

# Copy actual source
COPY aegis-core/src ./aegis-core/src

# Build with all features
RUN cargo build --release --features full --manifest-path aegis-core/Cargo.toml

# Stage 2: Runtime
FROM gcr.io/distroless/cc-debian12:nonroot

COPY --from=builder /app/target/release/aegis-server /

ENV RUST_LOG=info
EXPOSE 8080

ENTRYPOINT ["/aegis-server"]
