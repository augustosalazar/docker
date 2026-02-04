# Kali Linux with Logisim Evolution

This project provides a Dockerized Kali Linux environment pre-configured with **Logisim Evolution**, allowing you to work on digital logic designs within a secure, isolated container accessible via your web browser.

## Features

- **Base Image**: [linuxserver/kali-linux](https://hub.docker.com/r/linuxserver/kali-linux) (latest).
- **Logisim Evolution**: Version 4.0.0 installed and ready to use.
- **Java Runtime**: OpenJDK 21.
- **Web Access**: Integrated Guacamole/VNC interface for browser-based access.
- **Persistent Storage**: Configuration and desktop files mapped to the host.

## Prerequisites

Before you begin, ensure you have the following installed on your system:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

Follow these steps to get your environment up and running:

### 1. Build and Start the Container

Navigate to the project directory and run:

```bash
docker-compose up -d
```

This command will:
- Build the custom Kali image using the provided `dockerfile`.
- Download Logisim Evolution.
- Start the container in detached mode.

### 2. Access the Environment

Once the container is running, open your web browser and go to:

- **Web UI**: [http://localhost:3011](http://localhost:3011)

### 3. Launch Logisim Evolution

Inside the Kali desktop environment:
- You can find **Logisim Evolution** in the application menu under `Education` or `Electronics`.
- Alternatively, search for "Logisim" in the application launcher.
- A desktop shortcut is also created at `/usr/share/applications/logisim-evolution.desktop`.

## Project Structure

- `docker-compose.yml`: Defines the service, ports, and volumes.
- `dockerfile`: Customizes the Kali base image with Java and Logisim.
- `config/`: This directory is mounted to `/config` in the container. Your settings, desktop icons, and files should be saved here to persist across container restarts.

## Configuration

You can customize the setup in `docker-compose.yml`:
- **Ports**: Changed `3011:3000` (Web UI) and `3009:3001` (VNC) if needed.
- **Version**: Modify the `LOGISIM_VERSION` argument to install a different version.
- **Title**: Change the `TITLE` environment variable to rename the browser tab.

## Troubleshooting

- **Large Memory Usage**: The `shm_size` is set to `1gb` to prevent crashes in the GUI environment.
- **Config Folder Permissions**: If you don't have a `config` folder, Docker will create one owned by `root`. Since the container runs as UID 1000, you may encounter permission errors. If this happens, run:
  ```bash
  sudo chown -R 1000:1000 ./config
  ```
- **Port Conflicts**: Ensure ports `3011` and `3009` are not being used by other services.
