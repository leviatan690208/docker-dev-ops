# Developing Python with Docker containers

## Example

To pull a basic Docker container with Python, install some packages (see requirements.txt) and 
run the code under ```src/main.py``` use
```bash
docker compose up
```

This will pull the image, install your packages from your requirements.txt, run src/main.py which 
will plot a 3D Gaussian and save the plot in ```figures/Gaussian.pdf```
