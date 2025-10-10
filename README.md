# x86 Bootloader

A minimal **x86 real-mode bootloader** written in assembly (NASM). Boots in QEMU, prints a welcome message, and serves as a foundation for learning operating system development from scratch.

![Demo]<!-- Uploading "Screenshot 2025-10-10 131023.png"... -->

## 📸 Preview

![QEMU screenshot showing 'Hello from the bootloader!'](demo.png)  
*(Example output — customize with your own screenshot!)*

## ✨ Features

- 512-byte boot sector compliant with BIOS requirements
- Valid boot signature (`0x55AA`) at the end
- Prints a message using BIOS interrupt `int 0x10`
- Fully buildable with a single `make` command
- Runs safely in QEMU (no risk to your host system)

## 🛠️ Requirements

- [NASM](https://www.nasm.us/) – Netwide Assembler
- [QEMU](https://www.qemu.org/) – Machine emulator and virtualizer

Install on Debian/Ubuntu/Kali:
```bash
sudo apt install nasm qemu-system-x86
