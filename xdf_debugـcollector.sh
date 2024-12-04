#!/bin/bash

# run as root 
usage() {
cat 1>&2 <<EOF
Usage: ${0##*/} [OPTIONS]

Options:
  -h, -?           Show this help message
  -i INTERFACE     Specify the network interface (e.g., eth0, ens33)
  -w               Enable watch mode (continuous updates)
  -m MAP_ID        Specify the BPF map ID (e.g., 1, 2)
EOF
}

# Function to handle user's selection
run_option() {
    case $1 in
        9|17)  # XDP BPF Map Content and Monitoring need MAP_ID
            if [ -z "$MAP_ID" ]; then
                read -p "Enter map ID: " MAP_ID
            fi
            echo "### XDP BPF Map Content ###"
            bpftool map dump id "$MAP_ID"
            ;;
        12|15)  # XDP Program Statistics and Throughput/Packet Drops need INTERFACE
            if [ -z "$INTERFACE" ]; then
                read -p "Enter interface name: " INTERFACE
            fi
            echo "### XDP Program Statistics ###"
            cat /sys/class/net/"$INTERFACE"/xdp/*stat
            ;;
        16)  # XDP Buffers and Drops need INTERFACE
            if [ -z "$INTERFACE" ]; then
                read -p "Enter interface name: " INTERFACE
            fi
            echo "### XDP Buffers and Drops ###"
            cat /sys/class/net/"$INTERFACE"/xdp/*buf
            ;;
        19)  # XDP Program in Action needs INTERFACE
            if [ -z "$INTERFACE" ]; then
                read -p "Enter interface name: " INTERFACE
            fi
            echo "### XDP Program in Action (via tc or iproute2) ###"
            tc qdisc show dev "$INTERFACE"
            ;;
        24)  # Network Interface Stats (tx/rx)
            if [ -z "$INTERFACE" ]; then
                read -p "Enter interface name: " INTERFACE
            fi
            echo "### Network Interface Stats (tx/rx) ###"
            ifstat -i "$INTERFACE"
            ;;

        28)  # XDP Buffer Statistics
            echo "### XDP Buffer Statistics ###"
            cat /sys/class/net/"$INTERFACE"/xdp/*buf
            ;;
        1) echo "### links ###"; ip link show ;;
        2) echo "### default route ###"; ip route show | grep default ;;
        3) echo "### neighbors ###"; ip neighbor show ;;
        4) echo "### ps ###"; ps ax | grep xdf ;;
        5) echo "### sysctl for bpf ###"; sysctl -a 2>&1 | grep bpf | grep -v denied ;;
        6) echo "### sysctl for rp_filter ###"; sysctl -a 2>&1 | grep rp_filter | grep -v denied ;;
        7) echo "### iptables ###"; sudo iptables -vnL ;;
        8) echo "### XDP Program Attachments ###"; bpftool net show ;;
        10) echo "### XDP Debug Logs ###"; dmesg | grep xdp ;;
        11) echo "### eBPF Program Attachments ###"; bpftool prog show ;;
        13) echo "### eBPF Program Debugging ###"; dmesg | grep bpf ;;
        14) echo "### eBPF Program Loading Errors ###"; dmesg | grep -i bpf | grep -i "error" ;;
        18) echo "### XDP Program Status ###"; bpftool net xdp show ;;
        20) echo "### eBPF Link Debug ###"; bpftool link show ;;
        21) echo "### XDP Program Errors ###"; dmesg | grep xdp | grep -i error ;;
        22) echo "### eBPF Program Error Messages ###"; dmesg | grep bpf | grep -i error ;;
        23) echo "### BPF Type Format (BTF) Info ###"; bpftool btf dump ;;
        25) echo "### BPF Object Loading Status ###"; bpftool prog show ;;
        26) echo "### XDP Program Errors from dmesg ###"; dmesg | grep -i xdp | grep -i error ;;
        27) echo "### BPF Map Statistics ###"; bpftool map stats ;;
        29) echo "### eBPF Program Runtime Statistics ###"; cat /sys/class/bpf/prog_stats ;;
        30) echo "### XDP Program and BPF Map Configuration ###"; bpftool net show ;;
        *) echo "Invalid option"; ;;
    esac
}

display_menu() {
    echo -e "\033[1;32m###### Select an option to run ######\033[0m"
    echo -e "\033[1;32m#####################################"
    echo -e "\033[1;32m1)\033[0m  Show links"
    echo -e "\033[1;32m2)\033[0m  Show default route"
    echo -e "\033[1;32m3)\033[0m  Show neighbors"
    echo -e "\033[1;32m4)\033[0m  Show processes (ps)"
    echo -e "\033[1;32m5)\033[0m  Show sysctl settings for bpf"
    echo -e "\033[1;32m6)\033[0m  Show sysctl settings for rp_filter"
    echo -e "\033[1;32m7)\033[0m  Show iptables rules"
    echo -e "\033[1;32m8)\033[0m  Show XDP program attachments"
    echo -e "\033[1;32m9)\033[0m  Show XDP BPF map content"
    echo -e "\033[1;32m10)\033[0m Show XDP debug logs"
    echo -e "\033[1;32m11)\033[0m Show eBPF program attachments"
    echo -e "\033[1;32m12)\033[0m Show XDP program statistics"
    echo -e "\033[1;32m13)\033[0m Show eBPF program debug logs"
    echo -e "\033[1;32m14)\033[0m Show eBPF program loading errors"
    echo -e "\033[1;32m15)\033[0m Show XDP stats (throughput/packet drops)"
    echo -e "\033[1;32m16)\033[0m Show XDP buffers and drops"
    echo -e "\033[1;32m17)\033[0m Show XDP and BPF map content for monitoring"
    echo -e "\033[1;32m18)\033[0m Show XDP program status"
    echo -e "\033[1;32m19)\033[0m Show XDP program in action (via tc or iproute2)"
    echo -e "\033[1;32m20)\033[0m Show eBPF Link Debug"
    echo -e "\033[1;32m21)\033[0m Show XDP program errors"
    echo -e "\033[1;32m22)\033[0m Show eBPF program error messages"
    echo -e "\033[1;32m23)\033[0m Show BPF Type Format (BTF) info"
    echo -e "\033[1;32m24)\033[0m Show network interface stats (tx/rx)"
    echo -e "\033[1;32m25)\033[0m Show BPF object loading status"
    echo -e "\033[1;32m26)\033[0m Show XDP program errors from dmesg"
    echo -e "\033[1;32m27)\033[0m Show BPF map statistics"
    echo -e "\033[1;32m28)\033[0m Show XDP buffer statistics"
    echo -e "\033[1;32m29)\033[0m Show eBPF program runtime statistics"
    echo -e "\033[1;32m30)\033[0m Show XDP program and BPF map configuration"
}


while getopts ":h?w:i:m:" opt; do
    case ${opt} in
        h|\?) usage; exit 0 ;;
        w) WATCH=true ;;
        i) INTERFACE="$OPTARG" ;;
        m) MAP_ID="$OPTARG" ;;
        *) usage; exit 1 ;;
    esac
done

display_menu
read -p "Enter your selection (1-30): " selection
run_option $selection

