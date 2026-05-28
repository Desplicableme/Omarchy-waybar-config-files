
<div align="center">

# 🎨 Omarchy Waybar Config Files

### Premium Waybar Themes for Omarchy Linux

A curated collection of **high-performance waybar configurations** with sleek designs, modern UI elements, and smart module organization. Each theme is meticulously crafted for Hyprland users seeking customization beyond the standard Omarchy defaults.

[![GitHub Stars](https://img.shields.io/github/stars/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&color=df6124&labelColor=1a1a1a)](https://github.com/Desplicableme/Omarchy-waybar-config-files)
[![GitHub Forks](https://img.shields.io/github/forks/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&color=df6124&labelColor=1a1a1a)](https://github.com/Desplicableme/Omarchy-waybar-config-files)
[![Last Commit](https://img.shields.io/github/last-commit/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&color=df6124&labelColor=1a1a1a)](https://github.com/Desplicableme/Omarchy-waybar-config-files)

</div>

---

## ✨ Features at a Glance

- 🎯 **2+ Unique Themes** - Each with distinct layouts and styling
- 🚀 **Performance Optimized** - Lightweight configs with smart module grouping
- 🎵 **Audio Visualizer Support** - Cava integration for music visualization
- 📱 **System Monitoring** - Real-time CPU, battery, network status
- 🌡️ **Weather Integration** - Live weather updates from wttr.in
- 🎮 **Gaming Ready** - Idle inhibitor and performance monitoring
- 🔌 **Smart Power Management** - Battery alerts and power controls
- 🎨 **Omarchy Integration** - Deep integration with Omarchy ecosystem

---

## 🚀 Quick Start

### Prerequisites

```bash
# Install Waybar (comes with Omarchy)
# Optional but recommended packages:
yay -S waybar-module-pacman-updates-git wttrbar
```

### One-Line Installation

Choose your preferred theme and paste the command:

---

## 📦 Available Themes

### **v1** - Full-Featured Bottom Bar

> **The Complete Experience** - Everything you need in a bottom-positioned bar

**Key Features:**
- 📍 **Position:** Bottom (close to taskbar style)
- 🎵 **Audio:** Cava visualizer for real-time music waveforms
- 📊 **System:** Live CPU usage percentage display
- 🌐 **Network:** WiFi status with IP tooltips
- 🔋 **Power:** Battery percentage with intelligent charging states
- 🎙️ **Privacy:** Screenshare & audio-in indicators
- 📍 **Workspaces:** Icon-based workspace navigation (center position)
- 🎤 **Recording:** Detects active screen recordings (wf-recorder/OBS)
- 🌤️ **Weather:** Real-time temperature from your location
- 🎮 **Gaming:** Idle inhibitor to prevent sleep during gaming

**Modules Layout:**
- **Left:** Omarchy menu • Weather • Cava • Music Player
- **Center:** Workspaces
- **Right:** Recording indicator • Privacy controls • Updates • CPU • Bluetooth • Idle inhibitor • Network • Volume • Battery • Clock • Power menu

##### Installation:
```bash
git clone https://github.com/Desplicableme/Omarchy-waybar-config-files.git /tmp/repo && \
cp -rf /tmp/repo/config/v1/. ~/.config/waybar && \
rm -rf /tmp/repo && \
omarchy-restart-waybar
```

<img width="2560" height="1440" alt="v1 - Full Featured Bottom Bar" src="https://github.com/Desplicableme/Omarchy-waybar-config-files/blob/main/Waybar-pics/1.png?raw=true" />

---

### **v2** - Minimalist Top Bar with Groups

> **Smart & Compact** - Organized modules with collapsible hardware panel

**Key Features:**
- 📍 **Position:** Top (modern app-launcher style)
- 🎨 **Design:** Rounded corners with 8px margins for clean look
- 📊 **Spacing:** 8px gaps between module groups for visual separation
- 🎵 **Audio:** Cava visualizer with optimized width
- 📝 **Clock:** Center-positioned with 12-hour format and calendar tooltip
- 🎚️ **Hardware Group:** Collapsible drawer with CPU & Bluetooth (slides right)
- 🎙️ **Compact:** All essential modules without clutter
- 🎮 **Minimal Updates:** Only shows update count when needed
- 🌤️ **Weather:** Compact temperature display with click-to-search
- 🔋 **Battery:** Smart charging icon detection

**Modules Layout:**
- **Left:** Omarchy menu • Workspaces • Cava • Music Player
- **Center:** Clock (with Alt view for date)
- **Right:** Updates • Weather • Hardware (CPU/Bluetooth drawer) • Network • Idle inhibitor • Volume • Battery • Power menu

**Notable:** First theme to feature **collapsible hardware drawer** - reduces visual clutter while keeping system info accessible!

##### Installation:
```bash
git clone https://github.com/Desplicableme/Omarchy-waybar-config-files.git /tmp/repo && \
cp -rf /tmp/repo/config/v2/. ~/.config/waybar && \
rm -rf /tmp/repo && \
omarchy-restart-waybar
```

<img width="2560" height="720" alt="v2 - Minimalist Top Bar" src="https://github.com/Desplicableme/Omarchy-waybar-config-files/blob/main/Waybar-pics/2.png?raw=true" />

---

## 🔧 Configuration

### Optional Dependencies

```bash
# System monitoring
yay -S waybar-module-pacman-updates-git

# Weather module (recommended)
yay -S wttrbar

# Audio visualizer for Cava
yay -S cava

# System monitor with hardware info
yay -S btop
```

### Make Scripts Executable

Some themes may include custom scripts:

```bash
chmod +x ~/.config/waybar/scripts/cava.sh
chmod +x ~/.config/waybar/*.py
```

### Customize Your Location (Weather)

Edit the weather module in your config:

```jsonc
"custom/weather": {
    "exec": "curl -s 'wttr.in/YOUR_CITY?format=%t' | grep -oE '[0-9]+'"
}
```

---

## 🔄 Reset to Default

To restore the original Omarchy Waybar:

1. Press **`Super + Alt + Space`** (Omarchy Menu)
2. Navigate to **Update** → **Config** → **Waybar**
3. Omarchy will restore defaults and backup your custom config

---

## 📋 Detailed Module Reference

| Module | v1 | v2 | Function |
|--------|----|----|----------|
| **Omarchy Menu** | ✅ | ✅ | Opens Omarchy control center |
| **Workspaces** | ✅ Center | ✅ Left | Desktop workspace navigation |
| **Cava** | ✅ Left | ✅ Left | Real-time audio visualizer |
| **Music (MPRIS)** | ✅ Left | ✅ Left | Current song + player controls |
| **Clock** | ✅ Right | ✅ Center | Time display with calendar |
| **Weather** | ✅ Left | ✅ Right | Live temperature data |
| **CPU** | ✅ Right | ✅ Drawer | Processor usage % |
| **Battery** | ✅ Right | ✅ Right | Battery % + charging state |
| **Network** | ✅ Right | ✅ Right | WiFi/Ethernet status |
| **Volume** | ✅ Right | ✅ Right | Audio level + mute control |
| **Bluetooth** | ✅ Right | ✅ Drawer | Bluetooth device status |
| **Updates** | ✅ Right | ✅ Right | Pacman package updates |
| **Privacy** | ✅ Right | - | Screenshare + audio indicators |
| **Idle Inhibitor** | ✅ Right | ✅ Right | Prevents sleep during gaming |

---

## 🎯 Use Cases

### 💻 For Developers
- **v2** recommended for maximum screen real estate
- Compact clock + quick system access via hardware drawer

### 🎮 For Gamers
- **v1** for complete system monitoring
- Idle inhibitor prevents system sleep during gameplay
- Recording indicator shows when streaming

### 🎨 For Desktop Enthusiasts
- **v2** for modern, minimal aesthetic
- Smooth animations and collapsible panels

### 🔧 For System Admins
- Both themes include update notifications
- CPU + network monitoring always visible

---

## 🤝 Contributing

Contributions are welcome! Here's how:

1. **Fork** this repository
2. **Create** a new config version in `config/vX/`
3. **Add** a screenshot to `Waybar-pics/X.png`
4. **Test** thoroughly on your Omarchy installation
5. **Submit** a pull request with your improvements

### Version Naming Convention
- **v1, v2, v3...** - Full theme versions
- **v2.a, v2.b...** - Variants/iterations of main versions

---

## 📸 Gallery & Comparisons

| Theme | Position | Layout | Best For |
|-------|----------|--------|----------|
| **v1** | Bottom | Full | Complete monitoring |
| **v2** | Top | Compact with groups | Minimalist users |

---

## 🛠️ Troubleshooting

### Weather not showing?
```bash
# Test your location
curl -s 'wttr.in/YourCity?format=%t'

# Check internet connection
ping wttr.in
```

### Cava visualizer not working?
```bash
# Install and configure Cava
yay -S cava
cava  # Run to generate config
```

### Waybar not reloading?
```bash
# Restart manually
omarchy-restart-waybar

# Or
killall waybar && waybar &
```

---

## 📚 Resources

- [Waybar Documentation](https://github.com/Alexays/Waybar/wiki)
- [Omarchy Wiki](https://omarchylinux.com/wiki/)
- [Hyprland Docs](https://hyprland.org/)
- [Nerd Font Icons](https://www.nerdfonts.com/cheat-sheet)

---

## 🙏 Credits

- **Omarchy**: Base system and theme integration
- **HANCORE-linux**: Waybar themes inspiration & documentation style
- **Waybar Community**: Module development and best practices

---

<div align="center">

**Made with ❤️ for the Omarchy community**

*Last Updated: 2026-05-28*

</div>
