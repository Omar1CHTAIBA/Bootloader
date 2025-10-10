# x86 Bootloader

A minimal **x86 real-mode bootloader** written in assembly (NASM). Boots in QEMU, prints a welcome message, and serves as a foundation for learning operating system development from scratch.



## 📸 Preview
 
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/67b53f20-f339-4753-ab8e-0a7f86c49663" />

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
