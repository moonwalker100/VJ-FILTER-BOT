# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

# Use a supported base image (Bullseye = Debian 11)
FROM python:3.10.8-slim-bullseye

# Prevent interactive prompts and improve reliability
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install required packages
RUN apt update && apt upgrade -y && \
    apt install -y git && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r /requirements.txt

# Set up working directory
WORKDIR /VJ-FILTER-BOT
COPY . .

# Run the bot
CMD ["python", "bot.py"]
