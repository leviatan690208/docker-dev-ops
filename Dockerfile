# ./project-1/Dockerfile

FROM python:3.11-slim

# Set workdir inside the container
WORKDIR /app

# Install system-level dependencies (optional)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy only the requirements file first (to leverage Docker layer caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Default command (can override in docker-compose)
CMD ["python", "src/main.py"]
