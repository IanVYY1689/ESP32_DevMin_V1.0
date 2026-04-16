# ESP32_DevMin_V1.0
Compact ESP32-WROOM-32U carrier board for 5-channel servo/motor control, Bluetooth/WiFi telemetry
Project Title: 		esp32_min
Borard Title: 		Board1
PCB Title: 		PCB1

Borard Size: 		60.071mm x 60mm
Layers: 		Total 22, Copper 2

Devices: 		17
Footprints: 		14
Components: 		Total 25,Top Layer 25,Bottom Layer 0
Pads: 		Total 125, Table Stick 101,Metallized Hole 24, Nonmetallic Hole 0
Nets: 		Total 23, Unrouted 0

Slot Region: 		4
Vias: 		Total 51, Through Vias 51, Blind Or Buried Vais 0
CopperAreas: 		4
Length of Tracks: 		451.605mm

# 🤖 ESP32-Mini-Robot-Controller v1.0
![License](https://img.shields.io/badge/License-CERN--OHL--P--2.0-blue)
![Status](https://img.shields.io/badge/Status-Production_Ready-green)
![PCB](https://img.shields.io/badge/PCB-2_Layer_60x60mm-orange)

Compact ESP32-WROOM-32U carrier board designed for RoboMaster electrical control. Optimized for **5-channel servo/motor control**, Bluetooth/WiFi telemetry, and rapid prototyping.

---

## 📦 Features
- ✅ ESP32-WROOM-32U (WiFi + Bluetooth + 520KB SRAM)
- 🔌 5× 3-pin servo headers (GND-VCC-SIG, 2.54mm pitch)
- 🔋 Dual power input: USB-C (5V) or external 5-12V barrel jack
- ⚡ AMS1117-3.3 LDO with reverse polarity protection (SS34 diode)
-  CH340C USB-to-UART for plug-and-play flashing
- 📐 Compact form factor: 60×60mm, 4× M3 mounting holes
- 🌐 Open-source hardware & firmware examples

---

## 🔌 Pinout
| Header | ESP32 GPIO | Function |
|--------|------------|----------|
| S1     | GPIO 13    | Servo 1 PWM |
| S2     | GPIO 12    | Servo 2 PWM |
| S3     | GPIO 14    | Servo 3 PWM |
| S4     | GPIO 27    | Continuous Servo 4 |
| S5     | GPIO 26    | Continuous Servo 5 |
| VCC    | AMS1117-3.3| 3.3V logic rail |
| GND    | Common     | Star ground plane |

> ⚠️ **Power Note:** Servo VCC is supplied externally (5-6V BEC). ESP32 3.3V rail powers logic only.

---

## 🛠️ Quick Start
### 1. Order PCB
- Gerber & BOM ready for [JLCPCB](https://jlcpcb.com)
- [Direct Order Link](https://jlcpcb.com/partdetail/...) *(generate via JLCPCB "Add to Cart" → Share)*
- Assembly: LCSC Basic Parts only → $0 SMT fee

### 2. Flash Firmware
```bash
# Using Arduino IDE
Board: ESP32 Dev Module
Partition: Default 4MB with spiffs
Port: /dev/ttyUSB0 (or COM3)
Upload Speed: 921600
