FROM ubuntu:20.04

# Install system packages and dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    wget

# Install Jupyter
RUN python3 -m pip install jupyter

# Set the working directory
WORKDIR /app

# Copy the Jupyter notebook files from the host to the container
COPY . .

# Expose the default Jupyter port
EXPOSE 8888

# Create a non-root user
RUN useradd -m jupyter
USER jupyter

# Run Jupyter when the container starts
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
