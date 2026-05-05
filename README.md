# ⏱️ Timer with Preset Value and Alarm Trigger

## 📌 Project Overview
This project implements a **counter-based timer** using Verilog. The timer counts clock cycles and triggers an **alarm signal** when the counter reaches a predefined preset value.

---

## 🎯 Objective
To design and verify a digital timer that:
- Counts clock pulses when enabled
- Compares count with a preset value
- Triggers an alarm when the target value is reached

---

## ⚙️ Features
- 4-bit up counter
- Asynchronous reset
- Enable/disable control
- Comparator-based alarm trigger
- Testbench for simulation

---

## 🧩 Module Description

### Inputs:
- `clk` → Clock signal  
- `rst` → Reset signal  
- `enable` → Start/stop counting  
- `preset [3:0]` → Target value  

### Outputs:
- `count [3:0]` → Current counter value  
- `alarm` → High when count reaches preset  

---

## 🔁 Working
- When `rst = 1`, counter resets to 0  
- When `enable = 1`, counter increments on each clock pulse  
- When `count == preset`, alarm becomes HIGH  
- When `enable = 0`, counter stops  

---

## 🧪 Testbench
The testbench:
- Generates clock signal  
- Applies reset and enable conditions  
- Tests multiple preset values  
- Verifies alarm triggering  

---

## 📊 Simulation Result
- Counter increments correctly  
- Alarm triggers exactly at preset value  
- Proper reset and enable functionality observed  

---

## 🚀 Applications
- Alarm clocks  
- Digital timers  
- Traffic light systems  
- Industrial automation  
- Home appliances  

---

## 🛠️ Tools Used
- Verilog HDL  
- Cadence / ModelSim (for simulation)

---

## 📁 Files Included
- `alarmtrigger.v` → Main design  
- `alarmtrigger_tb.v` → Testbench  
- Waveform screenshot  

---

## 👩‍💻 Author
**Shreeja Kashyap**

---

## 📌 Note
This project is created for academic purposes and demonstrates basic digital design concepts like counters and comparator logic.
