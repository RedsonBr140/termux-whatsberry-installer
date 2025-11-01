# termux-whatsberry-installer
Install Whatsberry's server on your mobile phone via termux.
## Requirements
- Android device with Termux installed
- Internet access to download dependencies
- Permission to run scripts in Termux
- Basic knowledge of the terminal (recommended)

## Installation

1. Open Termux on your Android device.
2. Ensure your system is updated. The script tries to update it, but if the system tries to overwrite a file, it will fail.
```bash
pkg update && pkg upgrade
```
3. Run the following command:
```bash
curl -fsSL https://redsonbr140.github.io/termux-whatsberry-installer/scripts/stage1.sh | sh
```

## Usage

After installation, the WhatsBerry server should be already running on your device, if for some reason it stops, you can re-run it by using the following commands:
```bash
proot-distro login debian
cd whatsberry-public/
npm run pm2:start
```

## Contributing
Contributions are welcome! If you find bugs or have improvement ideas:
- Open an Issue with a clear description.
- Submit a Pull Request with your changes.
- Keep the scripts and style consistent with the project.

## License

MIT License — see `LICENSE` for details.
