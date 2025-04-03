# ViRust-SecureBoot

A secure bootloader implementation for the NXP S32K148 microcontroller, written in Rust with UDS protocol support.

## Features

- UDS (ISO 14229) protocol implementation
- Secure boot functionality
- Flash programming capabilities
- CAN communication
- Memory protection
- Cryptographic verification

## Hardware Requirements

- NXP S32K148 microcontroller
- CAN transceiver
- Debug probe (J-Link, etc.)

## Development Setup

1. Install Rust toolchain:
```bash
rustup target add thumbv7em-none-eabihf
```

2. Install ARM toolchain:
```bash
# On macOS
brew install arm-none-eabi-gcc
```

3. Build the project:
```bash
cargo build --release
```

## Project Structure

```
ViRust-SecureBoot/
├── src/
│   ├── startup/     # Startup code and vector table
│   ├── hal/         # Hardware abstraction layer
│   ├── bootloader/  # Bootloader core functionality
│   ├── uds/         # UDS protocol implementation
│   └── utils/       # Utility functions
├── tests/           # Test code
└── linker/          # Linker scripts
```

## License

This project is licensed under the MIT License - see the LICENSE file for details. 
