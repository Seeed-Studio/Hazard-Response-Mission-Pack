<!-- TOC -->

- [Software Setup](#software-setup)
        - [Step 2: Configuring Wireless Router](#step-2-configuring-wireless-router)
        - [Screen configurations](#screen-configurations)
        - [Wi-Fi/IP Setting Up](#wi-fiip-setting-up)
    - [LoRaWAN Network Setting Up](#lorawan-network-setting-up)
    - [Meshtastic Network Setting Up {#meshtastic}](#meshtastic-network-setting-up-meshtastic)
        - [Install the Latest Firmware for T1000-E](#install-the-latest-firmware-for-t1000-e)
        - [Setting T1000-E](#setting-t1000-e)
        - [Setting Router Client](#setting-router-client)
    - [Grove Vision V2 Setting Up](#grove-vision-v2-setting-up)
    - [Conclusion](#conclusion)
    - [More](#more)

<!-- /TOC -->

# Software Setup

Once you've assembled the hardware as figured out in the [Hardware Connection](./hardware-connection.md), you'll be able to set up the software configuration as needed. 

## Basecamp Configuration

### Configuring Wireless Router

The wireless router acts as the bridge between the basecamp and  the internet or the devices that run communicate with basecamp via local network in IP/TCP based protocols.  

#### Ethernet/Wi-Fi Setup


(If applicable) Connect the R1000 ReComputer to your network via Ethernet cable or configure Wi-Fi settings. Refer to the **Network and Communication Setup** section for detailed instructions.

#### RS485 devices Assembly  

The flashlight provides necessary illumination during low-visibility conditions:

- **Mounting**: Place the flashlight in a strategic location where it can effectively illuminate the desired area.
- **Power Setup**: Ensure the flashlight is connected to a reliable power source, either through batteries or a direct power connection.


### Screen configurations

- **Adjust Display Settings**: Configure the display settings on the R1000 ReComputer to ensure optimal visibility and functionality.

### Wi-Fi/IP Setting Up

## LoRaWAN Network Setting Up

## Meshtastic Network Setting Up

### Install the Latest Firmware for T1000-E

To maximize the capabilities of the T1000-E and ensure it operates with the latest features and security updates, you must install the latest firmware:

#### Step 1:  **Connect the T1000-E to Your Computer**

Use a USB-C cable to connect the T1000-E to your computer. Ensure the device is recognized by your operating system.

#### Step 2: Get the firmware

1. Navigate to [Meshtastic Web Flasher](https://flasher.meshtastic.org/) and connect to the T1000-E by pressing the spark button near the device option. if not showing the T1000-E device, please select device: `T1000-E Tracker Card` from Nordic section manually
2. choose the version you want to have.

    ![T1000-firmware-flasher-option](https://files.seeedstudio.com/wiki/SenseCAP/Meshtastic/T1000-firmware-flasher-option.png)

3. press the flash button and continue to get the firmware by `download uf2`

![T1000-firmware-flasher-option](https://files.seeedstudio.com/wiki/SenseCAP/Meshtastic/download-uf2.png)

#### Step 3: Install firmware

To enter DFU (Device Firmware Upgrade) mode: press and hold the device button, then toggle the charger cable twice. there will be a mounted drive named `T1000-E`.

Drag and drop the `.uf2` file to the driver. then the tracker device will reboot and load the firmware you download.

![enter boot mode](https://files.seeedstudio.com/wiki/SenseCAP/Meshtastic/T1000-enter-boot.gif)

By following these steps, you’ll ensure that your T1000-E Tracker is fully equipped to function effectively within your hazard response system.

For more information, refer to [T1000-E Tracker for Meshtastic | Seeed Studio Wiki](https://wiki.seeedstudio.com/sensecap_t1000_e/)

### Setting T1000-E

#### Setting LoRa parameters

#### Setting Meshtastic Channel

### Setting Router Client

> [!WARNING]  
> This section is only available for Router Client not for T1000-E!





## Grove Vision V2 Setting Up

## Conclusion

## More

Want to integrate more devices? such as RS485 device? you can start with [Integrate More Devices](./integrate-more-devices.md).
