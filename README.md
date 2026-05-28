<h1 align="center"> Omarchy Waybar Config Files </h1>

<h4 align="center"> A collection of personalized Omarchy Waybar themes with individual and unique designs. Enjoy exploring and customizing them! </h4>

<div align="center">

[![Stars](https://img.shields.io/github/stars/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&labelColor=000000&color=df6124&logo=github&logoColor=df6124)](https://github.com/Desplicableme/Omarchy-waybar-config-files)
[![Forks](https://img.shields.io/github/forks/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&labelColor=000000&color=df6124&logo=github&logoColor=df6124&cacheSeconds=3600)](https://github.com/Desplicableme/Omarchy-waybar-config-files)
[![Issues](https://img.shields.io/github/issues/Desplicableme/Omarchy-waybar-config-files?style=for-the-badge&labelColor=000000&color=df6124&logo=github&logoColor=df6124)](https://github.com/Desplicableme/Omarchy-waybar-config-files)
[![License](https://img.shields.io/badge/License-MIT-000000?style=for-the-badge&labelColor=000000&color=df6124)](LICENSE)

</div>

## About

These configs are Omarchy-based waybar themes with various customizations and personalized designs. Each version offers unique styling, layout options, and module configurations to suit different preferences and desktop environments.

## Usability

<details>
<summary><b>Click to expand</b></summary>

- These configs are Omarchy-based, including optional Omarchy-specific modules (logo, screen recorder, update module)
- They use standard modules such as pacman updates, weather, mpris, and system information
- All configurations are compatible with Hyprland and Omarchy environments
- Most versions support dynamic theme colors and user customization
- Easy one-command installation for each version

</details>

## Instructions

<details>
<summary><b>Additional Dependencies (Optional)</b></summary>

Some configurations may require additional packages for full functionality:

```bash
yay -S waybar-module-pacman-updates-git
```

```bash
yay -S wttrbar
```

```bash
yay -S gpu-usage-waybar
```

Make script files executable when needed:
```bash
chmod +x ~/.config/waybar/script_name.py
```

</details>

## Reset Waybar to default Omarchy style

<details>
<summary><b>Click to expand</b></summary>

To restore the default Omarchy Waybar look and config:

1. Open the **Omarchy Menu**  
   Press **Super + Alt + Space**
2. Select **Update**
3. Select **Config**
4. Select **Waybar**

This action:
- Resets `~/.config/waybar` to the stock Omarchy version
- Usually backs up your current custom config (e.g. to `config.bak`, `style.css.bak`, etc.)
- Reloads Waybar automatically in most cases

</details>

---

## v1

- Custom personalized Omarchy waybar configuration  
- Includes weather, mpris, hyprland/window, pacman/update modules, and screenrecord button
- Base design with essential functionality
- Dynamic module support with system information display

##### v1 Install-command (copy and paste in your terminal):

```bash
git clone https://github.com/Desplicableme/Omarchy-waybar-config-files.git /tmp/repo && cp -rf /tmp/repo/config/v1/. ~/.config/waybar && rm -rf /tmp/repo && omarchy-restart-waybar
```

<img width="2560" height="1440" alt="v1 Preview" src="https://github.com/Desplicableme/Omarchy-waybar-config-files/blob/main/Waybar-pics/1.png?raw=true" />

---

## Contributing

Feel free to submit issues, fork this repository, and create pull requests for any improvements or new themes!

## How to Contribute

1. Fork this repository
2. Create a new branch for your theme: `git checkout -b add-your-theme`
3. Add your waybar configuration to `config/vX` folder
4. Add a screenshot to `Waybar-pics/`
5. Update the README with your theme details
6. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

- **Omarchy**: Original base configuration and inspiration
- **HANCORE-linux**: [waybar-themes](https://github.com/HANCORE-linux/waybar-themes) - Documentation and design style inspiration
- **Community**: All contributors and theme creators

---

**Last updated**: 2026-05-28  
**Version**: 1.0.0
