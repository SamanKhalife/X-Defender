# eBPF and XDP resources
If you have no idea what XDP and eBPF are or how they work, you won't be able to get the best out of these technologies. Therefore, it's highly recommended to explore these resources to fully leverage their capabilities in network security.

## 1. **Official Documentation**
- [Learning eBPF by Liz Rice](https://isovalent.com/books/learning-ebpf/)
- [bpfTrace GitHub Repository](https://github.com/bpftrace/bpftrace/tree/master)
- [libbpf GitHub Repository](https://github.com/libbpf/libbpf/tree/master)
- [Cilium GitHub Repository](https://github.com/cilium/cilium/tree/main)
- [BCC Documentation](https://github.com/iovisor/bcc/tree/master/docs)
- [eBPF Official Website](https://ebpf.io/)
- [Cilium eBPF Documentation](https://docs.cilium.io/en/stable/bpf/)
- [Clang Documentation](https://clang.llvm.org/)

### Kernel Resources
This list provides direct links to C programs in the kernel that demonstrate various functionalities and use cases of eBPF and XDP.
- [BPF Documentation](https://github.com/torvalds/linux/tree/master/Documentation/bpf)
- [BPF Kernel Code](https://github.com/torvalds/linux/tree/master/kernel/bpf)
- [BPF Security](https://github.com/torvalds/linux/tree/master/security/bpf)
- [BPF Tools](https://github.com/torvalds/linux/tree/master/tools/bpf)
- [BPF Selftests](https://github.com/torvalds/linux/tree/master/tools/testing/selftests/bpf)
- [IPv4 Identifiers](https://elixir.bootlin.com/linux/v6.11-rc3/A/ident/ipv4)
- [IPv6 Code](https://github.com/torvalds/linux/tree/master/net/ipv6)
- [Nftables Reject Bridge](https://github.com/torvalds/linux/tree/master/net/bridge/netfilter/nft_reject_bridge.c)
- [IPv4 Code](https://github.com/torvalds/linux/tree/master/net/ipv4)
- [Skbuff Header](https://github.com/torvalds/linux/tree/master/include/linux/skbuff.h)
- [Filter Header](https://github.com/torvalds/linux/tree/master/include/linux/filter.h)
- [XDP Header](https://github.com/torvalds/linux/tree/master/include/net/xdp.h)
- [XDP Socket Driver Header](https://github.com/torvalds/linux/tree/master/include/net/xdp_sock_drv.h)
- [XDP Socket Header](https://github.com/torvalds/linux/tree/master/include/net/xdp_sock.h)
- [XDP Trace Events Header](https://github.com/torvalds/linux/tree/master/include/trace/events/xdp.h)
- [CPU Map Code](https://github.com/torvalds/linux/tree/master/kernel/bpf/cpumap.c)
- [XDP Core Code](https://github.com/torvalds/linux/tree/master/net/core/xdp.c#L341)
- [Filter Code](https://github.com/torvalds/linux/tree/master/net/core/filter.c#L3829)
- [RTNETLINK Code](https://github.com/torvalds/linux/tree/master/net/core/rtnetlink.c#L1463)
- [XDP Driver Code](https://github.com/torvalds/linux/tree/master/drivers/net/netdevsim/bpf.c#L180)
- [NFP BPF Verifier](https://github.com/torvalds/linux/tree/master/drivers/net/ethernet/netronome/nfp/bpf/verifier.c#L48)
- [NFP BPF Main Code](https://github.com/torvalds/linux/tree/master/drivers/net/ethernet/netronome/nfp/bpf/main.c#L27)
- [XDP Code (Additional)](https://github.com/torvalds/linux/tree/master/net/core/xdp.c#L407)
- [BPF Syscall Code](https://github.com/torvalds/linux/tree/master/kernel/bpf/syscall.c#L4357)
- [BPF Net Namespace Code](https://github.com/torvalds/linux/tree/master/kernel/bpf/net_namespace.c#L60)
- [BPF Local Storage Code](https://github.com/torvalds/linux/tree/master/kernel/bpf/local_storage.c#L598)

## 2. **Videos and Webinars**
### YouTube Resources
- [Netdev 0x13-XDP based DDoS Mitigation](https://www.youtube.com/watch?v=1Yw6YISaSkg)
- [BPF user experience rough edges - Jakub Sitnicki/Arthur Fabre](https://www.youtube.com/watch?v=yyAn0ZLJRRA)
- [Netdev 0x14 - Tutorial: How to add XDP support to a NIC](https://youtu.be/ayFWnFj5fY8)
- [Netdev 2.1 XDP for the Rest of Us By Andy Gospodarek + Jesper Dangaard Brouer](https://youtu.be/iBkR4gvjxtE)
- [XDP for the Rest of Us](https://youtu.be/mGjz3lPgt8I)
- [edge network](https://youtu.be/ZQsbYmdMjnw)
- [Netdev 0x13 - Skb Meta Data Extensions)](https://youtu.be/3xelUe_mTko)
- [Netdev 0x17 - Is scaling eBPF easy yet?](https://youtu.be/TGgIT9rMsns)
- [Netdev 0x14 - Tutorial: XDP and the cloud : Using XDP on hosts and VMs](https://youtu.be/l9C-ANkN1-Q)
- [Netdev 0x13 - XDP Hands On Tutorial](https://youtu.be/XQOPAemSj88)
- [Netdev 0x14 - Tutorial: How to add XDP support to a NIC](https://www.youtube.com/watch?v=ayFWnFj5fY8)



## 3. **GitHub Repositories:**
### GitHub Repositories
- [BCC Reference Guide](https://github.com/iovisor/bcc/blob/master/docs/reference_guide.md)
- [BCC libbpf-tools](https://github.com/iovisor/bcc/tree/master/libbpf-tools)
- [NetOptimizer Prototype Kernel](https://github.com/netoptimizer/prototype-kernel/tree/master)
- [XDP Tutorial by Zizheng Wong](https://github.com/zizhengWong/xdp-tutorial)
- [NetOptimizer BPF Samples](https://github.com/netoptimizer/prototype-kernel/tree/master/kernel/samples/bpf)
- [XDP Tutorial Project](https://github.com/xdp-project/xdp-tutorial)
- [UDPU XDP Example](https://github.com/minimaxwell/udpu-xdp)
- [XDP Tutor by MonkJunior](https://github.com/monkjunior/XDP-tutor)
- [XDP Firewall Example](https://github.com/gamemann/XDP-Firewall)
- [XDP Forwarding Example](https://github.com/gamemann/XDP-Forwarding)
- [eBPF Summit 2020 by Jakub Sitnicki](https://github.com/jsitnicki/ebpf-summit-2020)
- [XDP IPv6 Filter](https://github.com/dpino/xdp_ipv6_filter)
- [XDP Redirect Example](https://github.com/zhao-kun/xdp-redirect)
- [Libflowbypass by Justin Azoff](https://github.com/JustinAzoff/libflowbypass)
- [libbpfgo-tools](https://github.com/mozillazg/libbpfgo-tools)
- [libbpf Bootstrap](https://github.com/libbpf/libbpf-bootstrap)
- [XDP ACL Example](https://github.com/hi-glenn/xdp_acl)







## 4. **Blogs and Articles**
### Cloudflare XDP Resources
- [A story about AF_XDP, network namespaces and a cookie](https://blog.cloudflare.com/a-story-about-af-xdp-network-namespaces-and-a-cookie/)
- [A debugging story: corrupt packets in AF_XDP; a kernel bug or user error?](https://blog.cloudflare.com/a-debugging-story-corrupt-packets-in-af_xdp-kernel-bug-or-user-error/)
- [xdpcap: XDP Packet Capture](https://blog.cloudflare.com/xdpcap/)
- [Cloudflare architecture and how BPF eats the world](https://blog.cloudflare.com/cloudflare-architecture-and-how-bpf-eats-the-world/)
- [How to drop 10 million packets per second](https://blog.cloudflare.com/how-to-drop-10-million-packets/)
- [Assembly within! BPF tail calls on x86 and ARM](https://blog.cloudflare.com/assembly-within-bpf-tail-calls-on-x86-and-arm/)
- [Unimog - Cloudflare’s edge load balancer](https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/)
- [Magic Transit makes your network smarter, better, stronger, and cheaper to operate](https://blog.cloudflare.com/magic-transit/)
- [The tale of a single register value](https://blog.cloudflare.com/the-tale-of-a-single-register-value/)
- [How we built Network Analytics v2](https://blog.cloudflare.com/building-network-analytics-v2/)
- [A deep-dive into Cloudflare’s autonomous edge DDoS protection](https://blog.cloudflare.com/deep-dive-cloudflare-autonomous-edge-ddos-protection/)
- [Cloudflare recognized as a 'Leader' in The Forrester Wave for DDoS Mitigation Solutions](https://blog.cloudflare.com/cloudflare-is-named-a-leader-in-the-forrester-wave-for-ddos-mitigation-solutions/)
- [Virtual networking 101: bridging the gap to understanding TAP](https://blog.cloudflare.com/virtual-networking-101-understanding-tap/)
- [Cloudflare blocks an almost 2 Tbps multi-vector DDoS attack](https://blog.cloudflare.com/cloudflare-blocks-an-almost-2-tbps-multi-vector-ddos-attack/)
- [Magic Transit: Network functions at Cloudflare scale](https://blog.cloudflare.com/magic-transit-network-functions/)
- [Who DDoS'd Austin?](https://blog.cloudflare.com/who-ddosd-austin/)
- [Cloudflare servers don't own IPs anymore – so how do they connect to the Internet?](https://blog.cloudflare.com/cloudflare-servers-dont-own-ips-anymore/)
- [eBPF, Sockets, Hop Distance and manually writing eBPF assembly](https://blog.cloudflare.com/epbf_sockets_hop_distance/)
- [A Tour Inside Cloudflare's G9 Servers](https://blog.cloudflare.com/a-tour-inside-cloudflares-g9-servers/)
- [It's crowded in here](https://blog.cloudflare.com/its-crowded-in-here/)
- [Conntrack tales - one thousand and one flows](https://blog.cloudflare.com/conntrack-tales-one-thousand-and-one-flows/)
- [High Availability Load Balancers with Maglev](https://blog.cloudflare.com/high-availability-load-balancers-with-maglev/)
- [May I ask who’s calling, please? A recent rise in VoIP DDoS attacks](https://blog.cloudflare.com/attacks-on-voip-providers/)
- [When the window is not fully open, your TCP stack is doing more than you think](https://blog.cloudflare.com/when-the-window-is-not-fully-open-your-tcp-stack-is-doing-more-than-you-think/)
- [Holistic web protection: industry recognition for a prolific 2020](https://blog.cloudflare.com/cloudflare-named-the-innovation-leader-in-holistic-web-protection/)
- [L4Drop: XDP DDoS Mitigations](https://blog.cloudflare.com/l4drop-xdp-ebpf-based-ddos-mitigations/)

### Cloudflare eBPF Resources
- [eBPF can't count?](https://blog.cloudflare.com/ebpf-cant-count/)
- [Introducing ebpf_exporter](https://blog.cloudflare.com/introducing-ebpf_exporter/)
- [Production ready eBPF, or how we fixed the BSD socket API](https://blog.cloudflare.com/tubular-fixing-the-socket-api-with-ebpf/)
- [Live-patching security vulnerabilities inside the Linux kernel with eBPF Linux Security Module](https://blog.cloudflare.com/live-patch-security-vulnerabilities-with-ebpf-lsm/)
- [How We Used eBPF to Build Programmable Packet Filtering in Magic Firewall](https://blog.cloudflare.com/programmable-packet-filtering-with-magic-firewall/)
- [eBPF, Sockets, Hop Distance and manually writing eBPF assembly](https://blog.cloudflare.com/epbf_sockets_hop_distance/)
- [Raking the floods: my intern project using eBPF](https://blog.cloudflare.com/building-rakelimit/)
- [Optimizing Magic Firewall’s IP lists](https://blog.cloudflare.com/magic-firewall-optimizing-ip-lists/)
- [SOCKMAP - TCP splicing of the future](https://blog.cloudflare.com/sockmap-tcp-splicing-of-the-future/)
- [How to stop running out of ephemeral ports and start to love long-lived connections](https://blog.cloudflare.com/how-to-stop-running-out-of-ephemeral-ports-and-start-to-love-long-lived-connections/)
- [A July 4 technical reading list](https://blog.cloudflare.com/july-4-2022-reading-list/)
- [Virtual networking 101: bridging the gap to understanding TAP](https://blog.cloudflare.com/virtual-networking-101-understanding-tap/)
- [Unimog - Cloudflare’s edge load balancer](https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/)
- [Assembly within! BPF tail calls on x86 and ARM](https://blog.cloudflare.com/assembly-within-bpf-tail-calls-on-x86-and-arm/)
- [Lost in transit: debugging dropped packets from negative header lengths](https://blog.cloudflare.com/lost-in-transit-debugging-dropped-packets-from-negative-header-lengths/)
- [CVE-2022-47929: traffic control noqueue no problem?](https://blog.cloudflare.com/cve-2022-47929-traffic-control-noqueue-no-problem/)
- [Magic Transit makes your network smarter, better, stronger, and cheaper to operate](https://blog.cloudflare.com/magic-transit/)
- [Oxy: Fish/Bumblebee/Splicer subsystems to improve reliability](https://blog.cloudflare.com/oxy-fish-bumblebee-splicer-subsystems-to-improve-reliability/)
- [Who DDoS'd Austin?](https://blog.cloudflare.com/who-ddosd-austin/)
- [Everything you ever wanted to know about UDP sockets but were afraid to ask, part 1](https://blog.cloudflare.com/everything-you-ever-wanted-to-know-about-udp-sockets-but-were-afraid-to-ask-part-1/)
- [Magic Transit: Network functions at Cloudflare scale](https://blog.cloudflare.com/magic-transit-network-functions/)
- [A deep-dive into Cloudflare’s autonomous edge DDoS protection](https://blog.cloudflare.com/deep-dive-cloudflare-autonomous-edge-ddos-protection/)
- [Deep dives & how the Internet works](https://blog.cloudflare.com/deep-dives-how-the-internet-works/)
- [Perfect locality and three epic SystemTap scripts](https://blog.cloudflare.com/perfect-locality-and-three-epic-systemtap-scripts/)
- [SYN packet handling in the wild](https://blog.cloudflare.com/syn-packet-handling-in-the-wild/)
- [High Availability Load Balancers with Maglev](https://blog.cloudflare.com/high-availability-load-balancers-with-maglev/)
- [Cloudflare recognized as a 'Leader' in The Forrester Wave for DDoS Mitigation Solutions](https://blog.cloudflare.com/cloudflare-is-named-a-leader-in-the-forrester-wave-for-ddos-mitigation-solutions/)
- [Linux kernel security tunables everyone should consider adopting](https://blog.cloudflare.com/linux-kernel-hardening/)
- [Cloudflare One: One Year Later](https://blog.cloudflare.com/cloudflare-one-one-year-later/)
- [Holistic web protection: industry recognition for a prolific 2020](https://blog.cloudflare.com/cloudflare-named-the-innovation-leader-in-holistic-web-protection/)



## 5. **Tools and Utilities**


