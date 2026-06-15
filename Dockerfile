FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src ./src
COPY scripts ./scripts
COPY api ./api
COPY app.py .
COPY cli.py .

# Default command (kan later vervangen worden door API start)
CMD ["python", "scripts/run_comparison.py"]
