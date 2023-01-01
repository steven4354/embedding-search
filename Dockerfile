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

# Expose the default Jupyter port
EXPOSE 8888

# Run Jupyter when the container starts
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
