FROM python:3.11-slim

# Pull in Debian security updates (fixes OS-level CVEs like openssl/glibc)
RUN apt-get update \
  && apt-get -y upgrade \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy deps first for layer caching
COPY requirements.txt .

# Upgrade pip tooling and pin the packages Trivy flagged
RUN python -m pip install --no-cache-dir --upgrade pip setuptools \
  && python -m pip install --no-cache-dir "wheel>=0.46.2" "jaraco.context>=6.1.0" \
  && pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 8080
CMD ["python", "app.py"]
