# Use a base image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose the application port (if applicable)
EXPOSE 8000  

# Define the startup command
CMD ["streamlit", "run", "app.py", "--server.port", "8000", "--server.enableCORS", "false"]  
