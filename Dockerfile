FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip  \
    python3-venv  \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN python3 -m venv venv

RUN /bin/bash -c "source venv/bin/activate && pip install --no-cache-dir flask"

ENV PATH="/app/venv/bin:$PATH"

CMD ["python3", "app.py"]
    

