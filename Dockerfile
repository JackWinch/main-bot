FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    g++ \
    clang-format \
    libgtest-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY docs/requirements.txt docs/requirements.txt
RUN pip install --no-cache-dir --break-system-packages -r docs/requirements.txt

COPY . .

CMD ["bash"]
