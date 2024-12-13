# Python Django And Docker


1. **Clone the Repository:**
   ```bash
    https://github.com/BINAH25/python_docker_django
    cd python_docker_django

2. **Create Virtual Environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows, use `venv\Scripts\activate`

3. **Install the requires dependencies:**
   ```bash
   pip3 install -r requirements.txt

4. **Start the Containers in Detached Mode:**
   ```bash
    docker-compose up -d

    This will:
    Build the images (if not already built).
    Start the containers in detached mode.

5. **Check Running Containers**

    ```bash
        docker ps
    This will list all active containers along with their port mappings.

