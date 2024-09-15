
### Instructions to Compile, Load, and Attach the eBPF Program

1. **Save the Makefile**: Save the `Makefile` content to a file named `Makefile` in the same directory as your `xdp_program.c`.

2. **Install Dependencies**:
   - Ensure you have `clang`, `llvm`, `bpftool`, and `libbpf` installed on your system.
   - You can install these on Debian-based systems with:
     ```bash
     sudo apt-get install clang llvm bpftool libbpf-dev
     ```
   - On Red Hat-based systems, you might use:
     ```bash
     sudo yum install clang llvm bpftool libbpf-devel
     ```

3. **Compile the eBPF Program**:
   - Run the following command to compile the eBPF program:
     ```bash
     make
     ```
   - This will generate the LLVM bitcode file (`xdp_program.bc`) and the eBPF object file (`xdp_program.o`).

4. **Load the eBPF Program**:
   - Use the following command to load the eBPF program into the kernel and attach it to the network interface (e.g., `eth0`):
     ```bash
     sudo make load
     ```
   - This command will load the eBPF program, create the necessary maps, and attach the program to the specified network interface.

5. **Verify the eBPF Program**:
   - You can use `bpftool` to verify that the program and maps are loaded correctly:
     ```bash
     bpftool prog show
     bpftool map show
     ```

6. **Unload the eBPF Program**:
   - If you need to unload the eBPF program and remove the associated maps, use:
     ```bash
     sudo make unload
     ```

### Notes

- **Network Interface**: Replace `eth0` with the actual network interface you want to attach the eBPF program to.
- **Permissions**: Loading and unloading eBPF programs require root privileges.
- **Testing**: Ensure you test the eBPF program in a safe environment before deploying it in production, as it can affect network traffic.

This Makefile and the associated instructions will help you compile, load, and manage your eBPF XDP program efficiently.


# Integrations


## Getting Started with X-Defender Integration with Katran

### Steps

1. **Setup X-Defender:**
   - **Install X-Defender** on a dedicated server or virtual machine.
   - **Configure Network Interfaces** to capture and inspect incoming traffic.

2. **Configure X-Defender Rules:**
   - Set up **rate limiting and filtering rules** tailored to your traffic patterns.
   - Define rules for handling various types of traffic (e.g., TCP, UDP, ICMP).

3. **Integrate with Katran:**
   - **Deploy Katran** on a separate server or integrate it into your existing infrastructure.
   - **Configure Katran** to receive traffic directly from X-Defender.
   - Update **network routes** to ensure that traffic is directed through X-Defender before reaching Katran.

4. **Test the Integration:**
   - **Generate Test Traffic** to verify that X-Defender correctly filters and forwards traffic to Katran.
   - **Monitor Logs** on both X-Defender and Katran to confirm traffic flow and rule enforcement.

5. **Deploy and Monitor:**
   - Switch to **production mode** once testing is successful.
   - Continuously **monitor performance** and fine-tune rules as needed to adapt to changing traffic patterns.

### Additional Notes
- **Documentation**: Ensure that comprehensive documentation is maintained for all integration steps, configurations, and best practices.
- **Support**: For complex configurations or troubleshooting, reach out to X-Defender's support team.
