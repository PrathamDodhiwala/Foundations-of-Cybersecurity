# Task 1 — Foundation & Environment Setup
**Cybersecurity & Ethical Hacking Internship — ApexPlanet Software Pvt. Ltd.**
Timeline: Days 1–12

## Objective
Build strong fundamentals in cybersecurity, networking, cryptography, and set up a professional hacking lab (Kali Linux + Metasploitable2 in VirtualBox).

## Repo Contents
| File | Description |
|---|---|
| `Task1_Documentation_Package.docx` | Full write-up: CIA Triad & threat notes, Lab Setup Report, Linux command reference, networking notes, cryptography notes, tool familiarization guide, 20-question self-assessment quiz + answer key, and master deliverable checklist. |
| `openssl_exercises.sh` | Runnable script for the 5 required OpenSSL cryptography exercises (AES encryption/decryption, SHA256 hashing/verification, RSA key pair generation). |
| `linux_cheatsheet.md` | Quick-reference Linux command sheet (file system, permissions, package management, networking). |
| `screenshots/` | Evidence folder — see checklist below for required captures. |

## Lab Environment
- **Hypervisor:** VirtualBox
- **Attacker machine:** Kali Linux (4096 MB RAM, 2 CPU, 40 GB disk)
- **Target machine:** Metasploitable2 (512 MB RAM, 1 CPU)
- **Network:** Host-Only Adapter (isolated from LAN/internet)

## Required Screenshots (25+ minimum)
- [ ] VirtualBox version / About dialog
- [ ] Kali Linux desktop after install
- [ ] Kali internet connectivity test (`ping 8.8.8.8`)
- [ ] Metasploitable2 boot / login screen
- [ ] Host-Only Adapter configuration
- [ ] Successful ping between Kali and Metasploitable2 (both directions)
- [ ] Output of each of the 20 Linux commands (Section 3 of the docx)
- [ ] Each of the 5 OpenSSL exercises
- [ ] Wireshark capturing traffic with a filter applied
- [ ] Nmap scan results against Metasploitable2
- [ ] Burp Suite intercepting a request
- [ ] Netcat listener/client file transfer

## How to Reproduce
1. Install VirtualBox (free, Windows/Mac/Linux host build).
2. Download the Kali Linux Installer ISO and verify its SHA256 checksum against the official Kali download page.
3. Create the Kali VM per the specs above and complete installation.
4. Download and import the Metasploitable2 VMDK.
5. Configure both VMs on a shared Host-Only Adapter; confirm bidirectional ping.
6. Run through `openssl_exercises.sh` in the Kali terminal.
7. Install and run Wireshark, Nmap, Burp Suite, and Netcat per Section 6 of the docx.
8. Fill in the Master Deliverable Checklist (Appendix A) as each item is completed.

