## How to Use Docker Compose for the Mission Pack

Docker Compose simplifies the management of multi-container Docker applications, making it an ideal tool for deploying the Mission Pack system. The Mission Pack leverages Docker Compose to bundle all dependencies into Docker containers, ensuring a streamlined deployment and maintenance process. Follow the steps below to set up and run the Mission Pack effectively.

### Step 1: Modify Necessary Parameters

1. **Update Environment Variables**:  
   Before launching the Docker containers, you need to adjust specific environment variables to match your system setup. Open the environment file located at `factory-datas/env_docker_sensecraft-node-red.env` and modify the required parameters.

> [!NOTE]
> Ensure that the Device EUI for LoRaWAN devices is specified in *lowercase*.

### Step 2: Install Docker and Docker Compose

To utilize Docker Compose, Docker must be installed on your system. If Docker is not already installed, follow the instructions below to install Docker and Docker Compose.

#### Automated Docker Installation

Use the following script to automate the installation of Docker and Docker Compose on a Debian-based system. This script handles all necessary steps, including installing dependencies, adding the Docker repository, and setting up Docker services:

```bash
#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Installing Docker..."

    # Update package index
    sudo apt-get update

    # Install necessary dependencies
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

    # Add Docker's official GPG key
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # Update package index
    sudo apt-get update

    # Install Docker
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    # Add the current user to the docker group
    sudo usermod -aG docker $USER

    # Start Docker service
    sudo systemctl start docker

    # Enable Docker to start on boot
    sudo systemctl enable docker

    echo "Docker installation is complete. You may need to log out and log back in for the group changes to take effect."
else
    echo "Docker is already installed."
fi

# Check if Docker service is running
if ! sudo systemctl is-active --quiet docker
then
    echo "Docker service is not running. Attempting to start Docker service..."
    sudo systemctl start docker
    if sudo systemctl is-active --quiet docker
    then
        echo "Docker service started successfully."
    else
        echo "Failed to start Docker service. Please check the logs."
        exit 1
    fi
else
    echo "Docker service is running."
fi
```
> [!IMPORTANT]  
> After running this script, log out and log back in to apply the group changes for Docker access.

### Step 3: Build Docker Images and Run Containers

With Docker and Docker Compose installed and configured, you can now build Docker images and run the necessary containers to deploy the Mission Pack services.

1. **Start Docker Compose Services**:

   Use Docker Compose to build and start the services by running the following commands. These commands will initialize each service according to the specified configuration files:

   ```sh
   docker compose --file ~/sensecraft/docker-compose.initial.yml up --build
   docker compose --file ~/sensecraft/docker-compose.yml up -d --build
   docker compose --file ~/sensecraft/docker-compose.chirpstack.yml up -d --build
   ```

---

> [!TIP] 
> If you need to stop all running containers and remove them, execute the following command:
> ```shell
> docker stop $(docker ps -q) && docker rm $(docker ps -a -q)
> ```


By following these steps, you can effectively deploy and manage the Mission Pack system using Docker Compose. This setup ensures that all necessary components are correctly configured and operational, providing a robust and scalable solution for hazard response management.

## Server - Software Instructions

This section provides an overview of the various software components installed on the server through Docker Compose. Each YAML configuration file (`.yml`) defines different services and their functions. Let's dive into what is installed on the server and how you can use these services.

For this guide, we assume that your Basecamp server is assigned the IP address `192.168.100.10`. If you are using the Basecamp computer directly, you can access these services via `localhost`.

### Node-RED - Low-Code Platform

**Access URL:** http://192.168.100.10:1880/

Node-RED is a low-code development platform for visual programming, allowing you to connect devices, APIs, and online services in new and interesting ways.

### EMQX - MQTT Broker

**Access URL:** http://192.168.100.10:2001/

- **Default Username:** `admin`
- **Default Password:** `public`

To connect an MQTT client, use the address `192.168.100.10:1883`, where `1883` is the standard MQTT connection port.

### File Browser - Web File Management Console

The File Browser allows you to manage and organize your data files through a web interface.

**Access URL:** http://192.168.100.10:8091/

For example, if you upload a file named `default_background.jpg` to the root directory, it can be accessed via http://192.168.100.10:8092/default_background.jpg

In Node-RED, the file can also be accessed via http://sensecraft-nodered-static-file-server:8092/default_background.jpg.

### ChirpStack - LoRaWAN Network Server

If your Basecamp is equipped with the LoRaWAN WM1302 module and has the ChirpStack service installed, you can manage your LoRa devices and network information through the ChirpStack LoRaWAN network server.

**Access URL:** http://192.168.100.10:8080/
