# Aegis OS

## Zero-Trust, Local-First Enterprise AI Agent Framework

Aegis OS enables enterprises to deploy powerful AI agents that run **entirely within their infrastructure**. Zero data egress. Complete privacy. Enterprise-grade security.

### 🚀 Key Features

- **Zero External APIs**: All LLM inference runs locally (vLLM, llama.cpp)
- **Multi-Tenant Isolation**: Complete data separation at database level  
- **Production Ready**: PostgreSQL, Redis, Qdrant vector search
- **Enterprise Security**: JWT auth, Argon2 hashing, audit logging
- **BI Integration**: Native Apache Superset connectivity

### 📦 Tech Stack

| Component | Technology |
|-----------|------------|
| Core Engine | Rust (Tokio + Axum) |
| LLM Inference | vLLM / llama.cpp |
| Database | PostgreSQL + pgvector |
| Cache | DragonflyDB (Redis-compatible) |
| Vector Store | Qdrant |
| BI Platform | Apache Superset |

### 🏃 Quick Start

```bash
# Clone the repository
git clone https://github.com/11235813213455891442333776109871597/aegis-os.git
cd aegis-os

# Start infrastructure
docker-compose up -d

# Build and run
cd aegis-core
cargo run --release --features full
```

### 📚 Documentation

- [API Documentation](API_DOCUMENTATION.md)
- [Security Audit](SECURITY_AUDIT.md)
- [Architecture Decision Records](docs/adr/)

### 💰 Enterprise Pricing

| Tier | Compute | Price |
|------|---------|-------|
| Professional | Up to 4 nodes | $2,500/mo |
| Enterprise | Up to 16 nodes | $8,000/mo |
| Sovereign | Unlimited | Custom |

### 📄 License

MIT License - See LICENSE for details
