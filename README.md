# Mini Kernel Bootloader

This repository contains the source code for a mini bootloader designed to load and execute a simple kernel written in assembly language. The bootloader provides the necessary functionality to initialize the system, load the kernel into memory, and transfer control to the kernel code.

## Features

- **System Initialization:** The bootloader initializes the system by setting up the necessary hardware components, such as the interrupt table, Global Descriptor Table (GDT), and the stack.
- **Bootloader Configuration:** You can configure various parameters of the bootloader, such as the kernel entry point address and the memory layout.
- **Loading the Kernel:** The bootloader loads the kernel code from a specified location into memory.
- **Transfer Control:** Once the kernel is loaded, the bootloader transfers control to the kernel code, allowing the kernel to start executing.

## Usage

To use this mini bootloader, follow the instructions below:

1. Clone or download this repository to your local machine.
2. Review and modify the bootloader configuration settings in the source code if necessary.
3. Compile the bootloader code using a suitable assembly language compiler.
4. Create a bootable image by combining the compiled bootloader code with your kernel code.
5. Install the bootable image onto a bootable medium, such as a USB drive or a disk.
6. Boot your target machine from the bootable medium.
7. The bootloader will initialize the system, load the kernel into memory, and transfer control to the kernel code.
8. The kernel will start executing, and your operating system or application logic can take over from there.
9. Or just use the makefile to compile your own image or use the precompiled one in the build directory.

Note: The exact steps and tools required may vary depending on your specific platform and requirements.

## Dependencies

The mini bootloader is written in assembly language and does not have any external dependencies. It operates directly on the hardware and does not rely on any operating system or libraries.

## Limitations

- This bootloader is designed as a minimalistic example and may not provide advanced features commonly found in production-grade bootloaders.
- The bootloader assumes a specific memory layout and may not be compatible with all hardware configurations or operating systems.
- Additional modifications may be required to adapt the bootloader to your specific system or kernel requirements.

## Contributing

Contributions to this mini bootloader are welcome. If you find any issues or have suggestions for improvements, feel free to submit a pull request or open an issue on the repository.

When contributing, please ensure that your changes align with the goals and design principles of a minimalistic bootloader.

