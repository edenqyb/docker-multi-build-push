# docker-multi-build-push

A Bash utility for building and pushing multiple Docker service images to a registry.

## Usage

1. Clone the repo:
   ```bash
   git clone https://github.com/<your-username>/docker-multi-build-push.git
   cd docker-multi-build-push
2. Edit the script (build.sh):
   - Set `REGISTRY` to your Docker registry (e.g., `docker.io/username` or `ghcr.io/org`)
   - Set `BASE_PATH` if needed (optional, e.g., `myproject`)
   - Set `TAG` (e.g., `latest`)
   - Add your service directories to the `SERVICES` array
   ```bash
   REGISTRY="docker.io/myuser"
   BASE_PATH="project"
   TAG="v1.0.0"
   
   SERVICES=(
     service1
     service2
   )
3. Run the script:
   ```bash
   ./build.sh
