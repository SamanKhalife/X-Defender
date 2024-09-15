## Getting Started with X-Defender

### Prerequisites

Before you can run X-Defender, ensure that your system meets the following requirements:

1. **Linux Kernel with eBPF and XDP Support**: Your system should have a kernel version that supports XDP (typically version 4.8 or higher). Use the command `uname -r` to check your kernel version.

2. **Development Tools**: You will need Clang and LLVM to compile the eBPF code, along with other libraries required to work with eBPF programs.

3. **Required Libraries and Tools**:
   - `libbpf`: For interacting with eBPF programs.
   - `bpftool`: A utility for inspecting and managing eBPF programs and maps.
   - `libelf`: To handle ELF files used by eBPF programs.
   - `bpftrace` (optional but recommended): For tracing and debugging eBPF programs.


### Installing Dependencies

To install the required dependencies on an Ubuntu system, run the following commands:

```bash
sudo apt-get update
sudo apt-get install clang llvm libbpf-dev libelf-dev bpftool linux-headers-$(uname -r)
```

These commands will install the necessary tools and headers required to build and run eBPF programs with XDP.

### Cloning the Repository

Next, you need to clone the X-Defender repository from GitHub:

```bash
git clone https://github.com/SamanKhalife/X-Defender.git
cd X-Defender
```

This will download the X-Defender source code and navigate you into the project directory.

### Building the eBPF Program

To build the eBPF program, you will use Clang to compile the eBPF C code into an object file:

```bash
sssss
```

This command compiles the `.c` file, which contains the eBPF code for X-Defender, into an object file named `.o`. Ensure that the compilation is successful without any errors.

### Running X-Defender

After building the eBPF program, you can load it into the kernel using `bpftool` or a custom loader script provided in the repository.

Here’s a simple example using `bpftool`:

```bash
sudo sss
sudo sss
```

### Basic Usage Example

Once loaded, X-Defender will start inspecting and filtering incoming network traffic on the specified interface. For detailed configuration and examples, refer to the documentation or examples provided in the repository.

To unload the program, use:

```bash
sudo ip link set dev eth0 xdp off
```

This will detach the X-Defender eBPF program from the network interface, stopping the traffic filtering process.

### Troubleshooting

- **Kernel Version Issues**: If your kernel version is too old, consider upgrading to a newer version or using a system that meets the kernel requirements.
- **Compilation Errors**: Ensure that all dependencies are correctly installed and that you are using compatible versions of Clang and LLVM.
- **Interface Errors**: Make sure you replace `eth0` with the actual network interface you intend to protect.
