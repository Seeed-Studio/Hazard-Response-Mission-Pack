# Node-RED Usage Guide

## Installing Node-RED on reComputer R1000

1. Update the package list on the reComputer R1000:
   ```
   sudo apt update
   ```

2. Install Node.js and npm (Node.js package manager):
   ```
   sudo apt install nodejs npm
   ```

3. Use npm to install Node-RED:
   ```
   sudo npm install -g --unsafe-perm node-red
   ```
   Note: The `--unsafe-perm` flag is used to avoid some permission-related issues.

4. After the installation is complete, you can start Node-RED using the following command:
   ```
   node-red
   ```
   This will start the Node-RED server in the terminal.

5. Now, you can access the Node-RED web interface by visiting the following URL in your browser:
   ```
   http://localhost:1880
   ```
   Or, if you are connecting to the reComputer R1000 via SSH, you can use the IP address of the Raspberry Pi:
   ```
   http://<reComputer R1000 IP address>:1880
   ```

The SSH account for R1000 is `recomputer`, and the password is `12345678`.


## Denpendency

Before this project begins, you'll need to download Nodes on your own.

- node-red-sensecap-paas (v0.1.3)

# Emotion Detection System with SenseCAP Watcher and XIAO ESP32C6

This project implements an emotion detection system using the SenseCAP Watcher and XIAO ESP32C6 board. The SenseCAP Watcher analyzes the user's emotions and sends the data via UART to the XIAO ESP32C6. When the Watcher detects a negative emotion, it triggers an alarm through UART. The XIAO board receives the alarm and displays a message on an LCD screen. Additionally, the emotion data is sent to the reComputer R1000 via MQTT, which is then received by the Mission Pack through the MQTT node in Node-RED.

## Hardware Components

- SenseCAP Watcher
- XIAO ESP32C6 board
- RGB LCD screen
- Buzzer

## Software Dependencies

- Arduino IDE
- WiFi library
- PubSubClient library
- ArduinoJson library

## Setup and Configuration

1. Connect the SenseCAP Watcher to the XIAO ESP32C6 board via UART.

2. Connect the RGB LCD screen and buzzer to the XIAO ESP32C6 board.

3. Update the `ssid` and `password` variables in the code with your network credentials.

4. Update the `mqtt_server` variable with the address of your MQTT broker.

5. Upload the code to the XIAO ESP32C6 board using the Arduino IDE.

## Code Functionality

- The code connects to the specified Wi-Fi network and MQTT broker.

- It subscribes to the "mengdu-watcher" topic to receive emotion data from the SenseCAP Watcher.

- When a message is received on the subscribed topic, the `callback` function is triggered.

- If the received message is "unhappy", indicating a negative emotion, the code:
  - Sets the RGB color of the LCD screen to blue (defined in `colorBoss`).
  - Displays the message "Why Stress out" on the first line of the LCD.
  - Displays the message "Relax!" on the second line of the LCD.
  - Activates the buzzer for 500 milliseconds.
  - Waits for 3 seconds before proceeding.

- If no message is received or the emotion is not negative, the code:
  - Sets the RGB color of the LCD screen to green (defined in `colorSafe`).
  - Displays the message "Hello!" on the first line of the LCD.
  - Clears the second line of the LCD.

- The emotion data is also sent to the reComputer R1000 via MQTT.

- The MQTT message can be received by the Mission Pack through the MQTT node in Node-RED.

## MQTT Integration
- The code connects to the specified MQTT broker using the `mqtt_server` variable.

- It publishes the emotion data to the "mengdu-watcher" topic.

- The reComputer R1000 can subscribe to this topic to receive the emotion data.

- The Mission Pack can then process the emotion data using the MQTT node in Node-RED.

## Notes

- Make sure to install the required libraries mentioned in the Software Dependencies section.

- Ensure that the UART connection between the SenseCAP Watcher and XIAO ESP32C6 is properly set up.

- Customize the messages and colors displayed on the LCD screen according to your preferences.

- Modify the MQTT topic and server settings based on your specific setup.

















