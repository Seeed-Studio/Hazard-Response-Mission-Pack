<!-- TOC -->

- [Hardware Connection](#hardware-connection)
    - [Unpack and Inspect All Components](#unpack-and-inspect-all-components)
    - [Set Up LoRaWAN Nodes](#set-up-lorawan-nodes)
    - [Set Up Meshtastic Nodes](#set-up-meshtastic-nodes)
    - [Set Up Vision Module](#set-up-vision-module)
    - [Assemble Basecamp](#assemble-basecamp)
- [Conclusion](#conclusion)
- [Troubleshooting](#troubleshooting)

<!-- /TOC -->

## Hardware Connection

In this section, you'll get through the process of physically setting up the hardware components of the **Hazard Response Mission Pack**. Follow these steps to ensure all devices are properly connected and ready for operation.

![system diagram](/assets/img/v2-system-diagram.png)

### Unpack and Inspect All Components

Start by carefully unpacking all components of the **Mission Pack**. Verify that you have all the necessary devices and accessories:

<!-- Table items list -->

- R1000 ReComputer
- SenseCAP Data Loggers - LoRaWAN Devices
  - with Tripwire
  - With Ultrasonic
- Tracker - Meshtastic Nodes
- Grove Vision AI V2 - Vision Camera
- Flashlight - the alerting signal
- HDMI 10" screen - the display interface for R1000

### Set Up LoRaWAN Nodes

This device enables long-range communication for your system:

- **Antenna Connection**: Attach the antenna to the LoRaWAN communicator to enhance signal strength.
- **Power Supply**: Connect the LoRaWAN communicator to a power source using the appropriate adapter.
- **Interface with the ReComputer**: Use a USB or serial cable to connect the LoRaWAN communicator to the R1000 ReComputer for data transmission.

### Set Up Meshtastic Nodes

In **Mission Pack V0.2**, the Meshtastic nodes are powered by the [**Tracker T1000-E for Meshtastic**](https://www.seeedstudio.com/SenseCAP-Card-Tracker-T1000-E-for-Meshtastic-p-5913.html). This versatile device can sense temperature, light, accelerometer data, and GPS signals, making it ideal for various tracking and monitoring applications.

To get started with the **T1000-E Tracker**, you need to ensure it is fully charged. Unlike the LoRaWAN version, which can last nearly two months on a single charge, the T1000-E requires regular charging due to its enhanced functionality and sensor capabilities. Ensure it is adequately powered before deployment to maintain consistent tracking performance.

Next step: [Configure Meshtastic network](./software-setup.md#meshtastic)

### Set Up Vision Module

To set up the **Grove Vision AI Module V2**, you'll need to gather the following components:

- **XIAO ESP32C3**: A compact microcontroller board suitable for handling the AI tasks of the Vision module.
- **Grove - Vision AI Module V2**: The main AI-powered sensor module that monitors critical areas for potential hazards such as intruders or wildlife.
- **OV5647-69.1 FOV Camera Module**: A high-quality camera module compatible with Raspberry Pi 3B+ and 4B, providing visual input for the AI module.

![Vision V2 Module](https://files.seeedstudio.com/wiki/grove-vision-ai-v2/00.jpg)

#### Step 1: Connect the Camera to the CSI Interface

To start, connect the **OV5647 Camera Module** to the **Grove Vision AI Module V2** via the CSI interface. This connection allows the camera to feed visual data directly to the AI module for processing.

![Vision V2 connect with camera](https://files.seeedstudio.com/wiki/grove-vision-ai-v2/9.gif)

#### Step 2: Connect the Vision Module to XIAO ESP32C3

Next, connect the **Grove Vision AI Module V2** to the **XIAO ESP32C3** microcontroller. Follow the instructions in the GIF below carefully, ensuring the correct orientation and secure connections to avoid damage to the pins and ports.

![Connect Vision V2 with XIAO](https://files.seeedstudio.com/wiki/grove-vision-ai-v2/10.gif)

This AI-powered setup monitors critical areas for potential hazards effectively, providing immediate alerts and responses to threats such as unauthorized access or wildlife encroachment.

For more detailed instructions and troubleshooting, refer to the [Grove Vision V2 with Seeed Studio XIAO guide](https://wiki.seeedstudio.com/grove_vision_ai_v2_software_support/#-getting-started-with-seeed-studio-xiao-).

### Assemble Basecamp

The **Basecamp** assembly involves preparing the R1000 ReComputer as the central hub of your system. Follow these steps to properly assemble and connect all necessary hardware components.

#### Assemble R1000 ReComputer

The **R1000 ReComputer** serves as the core of your system, managing edge computing tasks and integrating various components. For detailed assembly instructions, refer to the [reComputer R1000 Assembly Guide](https://wiki.seeedstudio.com/recomputer_r1000_assembly_guide/).

##### Step 1.1: Install the LoRaWAN Gateway Chip

> [!Note] 
> You can skip this step if your R1000 ReComputer is equipped with the LoRaWAN Gateway chip ([Wio-WM1302 LoRaWAN Gateway](https://www.seeedstudio.com/WM1302-LoRaWAN-Gateway-Module-SPI-EU868-p-4889.html)).

Insert the **WM1302 module** into the designated slot inside the R1000 ReComputer, as shown in the image below. Ensure it is firmly seated in the fixed position.

![Assembly_Guide](https://files.seeedstudio.com/wiki/reComputer-R1000/Assembly_Guide/Wifi_and_ble.gif)

##### Step 1.2: Connect the RS485/EIA-485 Device

For more details about the **RS485** configuration on the R1000, refer to the [RS485 Setup Guide](https://wiki.seeedstudio.com/reComputer_r1000_use_rs485_modbus_rtu/).

> [!Note]  
> The power connection for the system is also configured during this step.


##### Step 1.3: Connect the HDMI 10" Screen

The **HDMI 10" screen** provides real-time monitoring and allows you to interact with the system:

1. Connect the HDMI cable to the HDMI port on the screen as shown in the image below.
2. Plug the other end of the HDMI cable into one of the USB ports on the R1000 ReComputer.

<!-- Insert relevant image showing the cable connection -->

##### Step 1.4: Connect the Keyboard

To set up the keyboard:

1. Insert two AAA batteries to power the keyboard.
2. Remove the USB receiver from the back of the keyboard and plug it into one of the remaining USB ports on the R1000 ReComputer.

##### Step 1.5: Final Checks and Power Connection

The power connection was established in **Step 1.2**. You can now proceed to power on the system.

Before turning on the system, double-check all connections to ensure that cables are securely connected and each device is properly powered. Once verified, you can power on the system.

After powering on, the R1000 ReComputer and other connected devices will start up. Wait for the system to fully initialize.

With the hardware setup complete, proceed to the next section to configure the software environment.

## Conclusion

In this page, you've learn how to assembly the device for the Mission Pack. In next page [Software Setup](./software-setup.md) you are going to setup all the configurations and parameters that system needs.

## Troubleshooting

- If any devices fail to power on, check the power connections and ensure the power source is functioning.
- If communication between devices is not established, verify that all interfaces are properly connected and configured in the software.

By following these steps, you will have your **Hazard Response Mission Pack** fully set up and ready for use, ensuring effective monitoring and response capabilities in hazard-prone environments.
