---
title: "Network Addresses"
date: 2025-09-12T10:15:00
draft: false
categories: ["Cybersecurity"]
tags: ["technology", "security", "cybersecurity", "networking"]
---

In a network, multiple devices are interconnected. To ensure that information reaches the correct destination, we need addresses. There are two types of addresses.

- MAC address

  - Definition: unique hardware address assigned to a device's network interface card
  - Format: 48 bits - colon separated hexadecimal
    - for readability, this sequence is split into six groups of 8 bits
  - Scope: works within a single local network (LAN)

- IP address
  - Definition: logical identifier assigned to a device to enable communication across networks
  - Versions
    - IPv4: 32-bit
    - IPv6: 128-bit
  - Scope: works across different networks
  - Format: 32-bit binary sequence

```bash
ifconfig
```

## MAC Address and Manufacturer

A MAC address is not just a random identifier. The first 24 bits known as the Organizationally Unique Identifier (OUI) are assigned by the IEEE to hardware manufacturers. This ensures that each device produced by a vendor has a unique address.

- OUI (first 3 bytes) - identifies the manufacturer
- Device-specific portion (last 3 bytes) - uniquely identifies a specific network interface card made by that manufacturer

---

Examples of IP to organization:

`8.8.8.8` - Google DNS
