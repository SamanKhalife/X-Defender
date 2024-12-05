# Flowchart

```
    |---------------------------------------------------------------------------------------------------|
    |                   +--------------------------------------------------------+                      |
    |                   |         Configure Network for AnyIP                    |                      |
    |                   |    - Bind IPs/Subnets to the Linux Machine             |                      |
    |                   |    - Set iptables Rules for Traffic Management         |                      |
    |                   |    - Ensure Kernel Modules for AnyIP are Loaded        |                      |
    |                   +--------------------------------------------------------+                      |
    |                                                |                                                  |
    |                                                v                                                  |
    |                   +--------------------------------------------------------+                      |
    |                   |          Manage Incoming Traffic with AnyIP            |                      |
    |                   |     - Process Traffic from Various IPs and Ports       |                      |
    |                   |     - Apply Additional Filters and Rules as Needed     |                      |
    |                   +--------------------------------------------------------+                      |
    |                                                |                                                  |
    |                                                v                                                  |
    |---------------------------------------------------------------------------------------------------|
                                         +-----------------------+
                                         |         Start         |
                                         | (Receive packets)     |
                                         +-----------------------+
                                                     |
                                                     v
                                         +-----------------------+
                                         | Process Ethernet Frame|
                                         |      (common code)    |
                                         +-----------------------+
                                                     |
                                                     v
                                        +-------------------------+
                                        | Is Ethernet Protocol    |
                                        | IPv4 or IPv6?           |
                                        +-------------------------+
                                            |                 |
                                            v                 v
                                        +-------+         +-------+
                                        | IPv4  |         | IPv6  |
                                        +-------+         +-------+
                                            |                 |
                                            v                 v
                         +-----------------------+        +-----------------------+
                         | Extract IP Header     |        | Extract IPv6 Header   |
                         | (common code)         |        | (common code)         |
                         +-----------------------+        +-----------------------+
                                    |                                 |
                                    v                                 v
                      +---------------------------+       +---------------------------+
                      | Is IP Protocol TCP, UDP,  |       | Is IPv6 Next Header TCP,  |
                      | ICMP or Other?            |       | UDP, ICMP or Other?       |
                      +---------------------------+       +---------------------------+
                        |           |           |            |           |           |
                        v           v           v            v           v           v
                    +-------+   +-------+   +-------+    +-------+   +-------+   +-------+
                    | TCP   |   | UDP   |   | ICMP  |    | TCP   |   | UDP   |   | ICMP  |
                    +-------+   +-------+   +-------+    +-------+   +-------+   +-------+
                      |           |           |              |           |           |
                      v           v           v              v           v           v
    -----------------------------------------------------------------------------------------------------------

            +-------------------+   +-------------------+   +-------------------+   +-------------------+
            | Fetch Rate Limit  |   | Fetch Rate Limit  |   | Fetch ICMP Rate   |   | Fetch Rate Limit  |
            | Data (For TCP)    |   | Data (For UDP)    |   | Limit             |   | (For TCP/UDP)     |
            +-------------------+   +-------------------+   +-------------------+   +-------------------+
                      |                        |                        |                         |
                      v                        v                        v                         v
            +-------------------+   +-------------------+   +-------------------+   +-------------------+
            | Check Rate Limit  |   | Check Rate Limit  |   | Check ICMP Rate   |   | Check Rate Limit  |
            | (For TCP)         |   | (For UDP)         |   | Limit             |   | (For TCP/UDP)     |
            +-------------------+   +-------------------+   +-------------------+   +-------------------+
                      |                        |                        |                         |
                      v                        v                        v                         v
            +-------------------+   +-------------------+   +-------------------+   +-------------------+
            | Rate Limit Passed |   | Rate Limit Passed |   | ICMP Rate Limit   |   | Rate Limit Passed |
            | (Update Map)      |   | (Update Map)      |   | Passed            |   | (Update Map)      |
            +-------------------+   +-------------------+   +-------------------+   +-------------------+
                      |   |              |         |            |         |               |         |
                      |   |--------------|----------------------|-------------------------|----------------------------------|
                      v                  v                      v                         v                                  |
            +-------------------+   +-------------------+   +----------------------+    +-------------------+       +-------------------+
            | Forward Packet    |   | Forward Packet    |   | Forward ICMP Echo    |    | Forward Packet    |       |   Drop Packet     |
            | (Rate Limit OK)   |   | (Rate Limit OK)   |   | Request(RateLimit OK)|    | (Rate Limit OK)   |       |  (Rate Limited)   |
            +-------------------+   +-------------------+   +----------------------+    +-------------------+       +-------------------+
            +-------------------+   +-------------------+   +----------------------+    +-------------------+
            | Forward Packet    |   | Forward Packet    |   | Forward ICMP Echo    |    | Forward Packet    |
            | (Rate Limit OK)   |   | (Rate Limit OK)   |   | Request(RateLimit OK)|    | (Rate Limit OK)   |
            +-------------------+   +-------------------+   +----------------------+    +-------------------+
            +-------------------+   +-------------------+   +----------------------+    +-------------------+
            | Forward Packet    |   | Forward Packet    |   | Forward ICMP Echo    |    | Forward Packet    |
            | (Rate Limit OK)   |   | (Rate Limit OK)   |   | Request(RateLimit OK)|    | (Rate Limit OK)   |
            +-------------------+   +-------------------+   +----------------------+    +-------------------+
                      |                        |                        |                         |
                      v                        v                        v                         v
            +-------------------+    +-------------------+    +-------------------+     +-------------------+
            | Check for Errors  |    | Check for Errors  |    | Check for Errors  |     | Check for Errors  |
            +-------------------+    +-------------------+    +-------------------+     +-------------------+
                      |                        |                        |                         |
                      v                        v                        v                         v
            +--------------------+   +-------------------+   +-------------------+      +-------------------+
            | Handle Errors      |   | Handle Errors     |   | Handle Errors     |      | Handle Errors     |
            | (Log and Recover)  |   | (Log and Recover) |   | (Log and Recover) |      | (Log and Recover) |
            +--------------------+   +-------------------+   +-------------------+      +-------------------+
                      |                        |                        |                         |
                      v                        v                        v                         v
            +-------------------+   +-------------------+   +-------------------+      +-------------------+
            | Dynamic Config    |   | Dynamic Config    |   | Dynamic Config    |      | Dynamic Config    |
            | (Update Settings) |   | (Update Settings) |   | (Update Settings) |      | (Update Settings) |
            +-------------------+   +-------------------+   +-------------------+      +-------------------+
                            |                        |         |                          |
                            -------------------      |         |   ------------------------
                                              v      v         v   v
                                            +-----------------------+
                                            |          End          |
                                            | (Wait for next packet)|
                                            +-----------------------+
```
