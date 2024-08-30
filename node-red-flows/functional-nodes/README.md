# Functional Nodes

## Introduction

Here is the basic Node-RED Flow implemented by seeed studio and community developers.

This includes the incoming and outgoing data from the device, and some of the application case base dependencies on the Global and Subflow nodes

## Functional Global Nodes Inventory

| Type | Related Equipment | Description | Flow File |
| --- | --- | --- | --- |
| IoT | Basecamp | The base config nodes of 3 channels RS485 in reComputer r1000. | ·[JSON](./global/default_rs485_global_nodes.json) |
| IoT | Basecamp | The base config node of the built-in MQTT network. | ·[JSON](./global/default_rs485_global_nodes.json) |

> ❤️ Looking forward to more contributors to create useful nodes.

## Functional Subflow Inventory

| Type | Related Equipment | Description | Flow File |
| --- | --- | --- | --- |
| UI | / | A beautiful digital twin data panel is implemented, on the node red dashboard. | ·[JSON](./subflow/digital-twin.json) <br/> ·Doc |
| UI | / | An image preview panel, on the node red dashboard. | ·[JSON](./subflow/image-preview-ui.json) <br/> ·Doc |
| Logic & UI | / | Map dashboard ui and geofence function. It can be used with tracker for location and asset management. | ·[JSON](./subflow/geofence.json) <br/> ·Doc |
| Logic | / | A good logic judgment node, used to simply do multi-device data condition judgment processing and execution. | ·[JSON](./subflow/condition.json) <br/> ·Doc |
| Device | Basecamp | Receive generic ip camera images, or any rtmp streaming media. | ·[JSON](./subflow/rpi-ip-camera-rtsp.json) <br/> ·Doc |
| Device | Basecamp | Through the Raspberry PI processor, the function of face recognition is realized. | ·[JSON](./subflow/rpi-face-recognization.json) <br/> ·Doc |
| Device | Basecamp | Through the Raspberry PI processor, the function of object detection is realized. | ·[JSON](./subflow/rpi-object-detection.json) <br/> ·Doc |
| Device | SenseCAP T1000-E | SenseCAP T1000-E is a tracker that supports the meshtastic protocol. GPS positioning and text message sending and receiving functions are implemented. | ·[JSON](./subflow/meshtastic.json) <br/> ·Doc |
| Device | Basecamp <br/>& RS485 Light Controller | Integrate reComputer R1000, with rs485 light controller. | ·[JSON](./subflow/rs485-light-controller.json) <br/> ·Doc |
| Device | Grove-Vision AI V2 <br/>& XIAOESP32C3 | Integrate Grove - Vision AI V2, with XIAOESP32C3. | ·[JSON](./subflow/grove-vision-ai-v2.json) <br/> ·Doc |
| Device | SenseCAP Data Logger<br/>& Ultrosonic | Integrate SenseCAP Data Logger, with a ultrosonic sensor. | ·[JSON](./subflow/sensecap-data-logger-ultrasonic.json) <br/> ·Doc |
| Device | SenseCAP Data Logger<br/>& Tripwire | Integrate SenseCAP Data Logger, with a tripwire sensor. | ·[JSON](./subflow/sensecap-data-logger-tripwire.json) <br/> ·Doc |
| Device | SenseCAP Watcher | This Subflow implementation integrates SenseCAP Watcher to achieve the functions of getting images, sounds, alarms, and sending tasks and pictures | ·[JSON](./subflow/sensecap-watcher.json) <br/> ·Doc |
| Virtual Device | Basecamp | A virtual device node for presenting possible scenarios of a 7-in-1 weather station, with community contributions expected. | ·[JSON](./subflow/7in1-weather-station.json) <br/> ·Doc |
| Virtual Device | Basecamp | A virtual device node for presenting possible scenarios of a power system sensor, with community contributions expected. | ·[JSON](./subflow/power-system-sensor.json) <br/> ·Doc |

> ❤️ Looking forward to more contributors to create useful subflows.

## Contributions

