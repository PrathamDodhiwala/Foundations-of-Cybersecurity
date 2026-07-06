# Linux Command Cheat-Sheet — Task 1
**Cybersecurity & Ethical Hacking Internship — ApexPlanet Software Pvt. Ltd.**

Quick reference for the 20 core Linux commands documented in Task 1. Full context, expected outputs, and screenshots are in `Task1_Documentation_Package.docx`.

## File System Navigation
| Command | Example | Purpose |
|---|---|---|
| `pwd` | `pwd` | Print current working directory |
| `ls` | `ls -la` | List directory contents, including hidden files and permissions |
| `cd` | `cd /home/kali/Desktop` | Change current directory |
| `mkdir` | `mkdir test_dir` | Create a new directory |
| `rmdir` | `rmdir test_dir` | Remove an empty directory |
| `cp` | `cp file1.txt file2.txt` | Copy a file |
| `mv` | `mv file1.txt /tmp/` | Move or rename a file |
| `rm` | `rm file2.txt` | Delete a file |

## Permissions
| Command | Example | Purpose |
|---|---|---|
| `chmod` | `chmod 644 file.txt` | Change file permission bits |
| `chown` | `chown kali:kali file.txt` | Change file owner and group |
| `chmod 777` | `chmod 777 test.sh` | Full read/write/execute for everyone — lab use only |
| `chmod 755` | `chmod 755 test.sh` | Owner: full access; group/others: read + execute — typical for scripts |

## Package Management
| Command | Example | Purpose |
|---|---|---|
| `apt update` | `sudo apt update` | Refresh local package index |
| `apt upgrade` | `sudo apt upgrade -y` | Install available updates |
| `install package` | `sudo apt install nmap -y` | Install a specified package |

## Networking Commands
| Command | Example | Purpose |
|---|---|---|
| `ifconfig` | `ifconfig eth0` | Display/configure network interface (legacy) |
| `ip addr` | `ip addr show` | Modern replacement for ifconfig |
| `ping` | `ping -c 4 8.8.8.8` | Test host reachability and latency |
| `netstat` | `netstat -tulnp` | Show active connections and listening ports |
| `traceroute` | `traceroute google.com` | Show network path (hops) to a destination |

**Note:** In this lab, `traceroute` beyond the VirtualBox NAT gateway (10.0.2.2) does not resolve further hops — this is a known VirtualBox NAT limitation (ICMP TTL-exceeded responses aren't forwarded past the virtual router), not a misconfiguration.
